import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doris_downloader/core/error_handling/contexts/contexts/custom_error.dart';
import 'package:doris_downloader/core/utils/permision_handler.dart';
import 'package:doris_downloader/features/downloader/data/models/fb/fb_model.dart';
import 'package:doris_downloader/features/downloader/data/models/ig/ig_model.dart';
import 'package:doris_downloader/features/downloader/data/models/pinterest/pinterest_model.dart';
import 'package:doris_downloader/features/downloader/data/models/reddit/reddit_model.dart';
import 'package:doris_downloader/features/downloader/data/models/tiktok/tiktok_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DownloaderRepository {
  final String apiUrl = 'https://beta.fastsaverapi.com/media/info';
  final Dio dio = Dio();

  final String _downloadsPath = '/storage/emulated/0/Download/DorisDownloads';

  // Platform channel for media scanner
  static const MethodChannel _channel = MethodChannel(
    'com.example.doris_downloader/media_scanner',
  );

  // Remove asyncErrorWrapper - let errors bubble up
  Future<void> download(
    String downloadUrl,
    String platform,
    String fileExtension, {
    required Function(int received, int total) onReceiveProgress,
  }) async {
    // Ensure directory exists
    final directory = Directory(_downloadsPath);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }

    final fileName =
        '${platform}_${DateTime.now().millisecondsSinceEpoch}.$fileExtension';
    final filePath = '$_downloadsPath/$fileName';

    // Download the file
    await dio.download(
      downloadUrl,
      filePath,
      deleteOnError: true,
      options: Options(
        followRedirects: true,
        validateStatus: (status) => status != null && status < 400,
      ),
      onReceiveProgress: onReceiveProgress,
    );

    // Notify media scanner about the new file (NO DUPLICATION)
    await _notifyMediaScanner(filePath);
  }

  /// Notify Android media scanner to make file visible in gallery
  /// This DOES NOT duplicate the file - it just registers it with the media database
  Future<void> _notifyMediaScanner(String filePath) async {
    try {
      await _channel.invokeMethod('scanFile', {'filePath': filePath});
      log('Media scanner notified for: $filePath');
    } catch (e) {
      log('Failed to notify media scanner: $e');
    }
  }

  // Remove asyncErrorWrapper - let errors bubble up
  Future<List<FileSystemEntity>> getDownloadedVideos() async {
    final directory = Directory(_downloadsPath);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
    }
    final dorisDownloadsFiles = directory.listSync();
    return dorisDownloadsFiles;
  }

  // Remove asyncErrorWrapper - let errors bubble up
  Future<dynamic> _fetchData(String url) async {
    final String apiKey = dotenv.env['API_KEY'] ?? '';
    log('apiKey: $apiKey');
    log('apiUrl: $apiUrl');
    log('url: $url');
    log('queryParameters: {$url, $apiKey}');
    final response = await dio.get(
      apiUrl,
      queryParameters: {'url': url},
      options: Options(headers: {'api-key': apiKey}),
    );
    if (response.statusCode == 200) {
      log('response.data: ${response.data}');
      return response.data;
    } else {
      throw CustomException('Failed to get link info');
    }
  }

  // Remove asyncErrorWrapper - let errors bubble up
  Future<dynamic> getLinkInfo(String url) async {
    final hasPermission = await requestPermission();
    if (!hasPermission) {
      throw CustomException('Storage permission denied');
    }
    log(url);
    final linkInfo = await _fetchData(url);
    if (url.contains('pin.it')) {
      return PinterestModel.fromJson(linkInfo);
    } else if (url.contains('tiktok.com')) {
      return TiktokModel.fromJson(linkInfo);
    } else if (url.contains('facebook.com')) {
      return FbModel.fromJson(linkInfo);
    } else if (url.contains('instagram.com')) {
      return IgModel.fromJson(linkInfo);
    } else if (url.contains('reddit.com')) {
      return RedditModel.fromJson(linkInfo);
    } else {
      throw CustomException('Unsupported: Could not parse link info');
    }
  }


  Map<String, dynamic> getDownloadData(dynamic model) {
    if (model is PinterestModel) {
      log('model: ${model.toString()}');
      return {
        'url': model.downloadUrl,
        'fileExtension': model.type == 'video' ? 'mp4' : 'jpg',
        'platform': 'pinterest',
      };
    } else if (model is TiktokModel) {
      log('model: ${model.toString()}');
      return {
        'url': model.downloadUrl,
        'fileExtension': model.type == 'video' ? 'mp4' : 'jpg',
        'platform': 'tiktok',
      };
    } else if (model is FbModel) {
      log('model: ${model.toString()}');
      return {
        'url': model.downloadUrl,
        'fileExtension': model.type == 'video' ? 'mp4' : 'jpg',
        'platform': 'facebook',
      };
    } else if (model is IgModel) {
      log('model: ${model.toString()}');
      return {
        'url': model.downloadUrl,
        'fileExtension': model.type == 'video' ? 'mp4' : 'jpg',
        'platform': 'instagram',
      };
    } else if (model is RedditModel) {
      log('model: ${model.toString()}');
      return {
        'url': model.medias?.first.url,
        'fileExtension':
            model.medias?.first.extension ??
            (model.medias?.first.type == 'video' ? 'mp4' : 'jpg'),
        'platform': 'reddit',
      };
    } else {
      throw CustomException('Unsupported: Could not get download data');
    }
  }
}
