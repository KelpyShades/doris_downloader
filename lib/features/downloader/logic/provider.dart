import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:doris_downloader/core/error_handling/contexts/contexts/custom_error.dart';
import 'package:doris_downloader/features/downloader/data/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final sharedProvider = StateProvider<String>((ref) {
  return '';
});

final indexProvider = StateProvider<int>((ref) {
  return 0;
});

final controllerProvider = StateProvider<String>((ref) {
  return '';
});

final downloadedFilesProvider = FutureProvider<List<File>>((ref) async {
  final DownloaderRepository repository = DownloaderRepository();
  final downloadedEntities = await repository.getDownloadedVideos();
  final files = downloadedEntities.whereType<File>().map((entity) {
    return entity;
  }).toList();
  return files;
});

final downloadPercentageProvider = StateProvider<int>((ref) {
  return 0;
});

final modelProvider = StateProvider<String>((ref) {
  return '';
});

final unseenDownloadsProvider = StateProvider<bool>((ref) {
  return false;
});

final thumbnailsProvider = FutureProvider<List<Uint8List>>((ref) async {
  final repository = DownloaderRepository();
  final thumbnails = await ref.watch(downloadedFilesProvider.future).then((
    data,
  ) async {
    if (data.isEmpty) {
      return <Uint8List>[];
    }
    final files = data.reversed.toList();
    return await Future.wait(
      files
          .map((file) async => await repository.getVideoThumbnail(file.path))
          .toList(),
    );
  });
  return thumbnails;
});

final downloaderNotifierProvider =
    AsyncNotifierProvider<DownloaderNotifier, void>(DownloaderNotifier.new);

class DownloaderNotifier extends AsyncNotifier<void> {
  final DownloaderRepository _repository = DownloaderRepository();
  dynamic _downloadModel;

  @override
  FutureOr<void> build() {
    state = const AsyncValue.loading(progress: 0);
    log('build');
  }

  Future<void> _getLinkInfo(String url) async {
    log('getLinkInfo');
    state = const AsyncValue.loading(progress: 0);
    _downloadModel = await _repository.getLinkInfo(url);
    state = const AsyncValue.loading(progress: 0.5);
  }

  Future<void> download(String url) async {
    await _getLinkInfo(url);
    log('download');
    if (_downloadModel == null) {
      log('downloadModel is null');
      throw CustomException('Failed to get link info');
    }

    final downloadData = _repository.getDownloadData(_downloadModel);
    ref.read(modelProvider.notifier).state = downloadData['platform'];

    await _repository.download(
      downloadData['url'],
      downloadData['platform'],
      downloadData['fileExtension'],
      onReceiveProgress: (received, total) {
        if (total <= 0) return;
        ref.read(downloadPercentageProvider.notifier).state =
            (received / total * 100).floor();
      },
    );

    log('download completed');
    state = const AsyncValue.data(null);
    ref.read(downloadPercentageProvider.notifier).state = 0;
    _downloadModel = null;
    ref.invalidate(downloadedFilesProvider);
    ref.read(unseenDownloadsProvider.notifier).state = true;
  }
}
