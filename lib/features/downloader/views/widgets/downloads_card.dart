import 'dart:io';
import 'dart:typed_data';

import 'package:doris_downloader/core/config/theme.dart';
import 'package:doris_downloader/core/constants/assets.dart';
import 'package:doris_downloader/features/downloader/views/widgets/platform_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DownloadsCard extends ConsumerWidget {
  const DownloadsCard({super.key, required this.file, required this.thumbnail});
  final File file;
  final Uint8List thumbnail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fileName = file.path.split('/').last;
    final platform = fileName.split('_').first;
    final fileExtension = fileName.split('.').last;
    return GestureDetector(
      onTap: () async {
        if (_isVideo(fileExtension)) {
          context.push('/video_play', extra: file.path);
        } else if (_isImage(fileExtension)) {
          context.push('/image_view', extra: file.path);
        }
      },
      child: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.circular(25),
            ),
            child: _isVideo(fileExtension)
                // ? ClipRRect(
                //     borderRadius: BorderRadius.circular(25),
                //     child: Image.memory(thumbnail, fit: BoxFit.cover),
                // )
                ? Center(child: Icon(Icons.video_camera_back_rounded))
                // : ClipRRect(
                //     borderRadius: BorderRadius.circular(25),
                //     child: Image.file(file, fit: BoxFit.cover),
                //   ),
                : Center(child: Icon(Icons.image_rounded)),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: PlatformContainer(
              platformAsset: _getPlatformAsset(platform),
              size: 40,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: Icon(_getFileIcon(fileExtension)),
          ),
        ],
      ),
    );
  }

  IconData _getFileIcon(String extension) {
    switch (extension) {
      case 'mp4':
      case 'avi':
      case 'mov':
      case 'mkv':
      case 'webm':
        return Icons.video_library_rounded;
      case 'jpg':
      case 'jpeg':
      case 'png':
      case 'gif':
      case 'webp':
        return Icons.image_rounded;
      case 'mp3':
      case 'wav':
        return Icons.audiotrack_rounded;
      default:
        return Icons.insert_drive_file;
    }
  }

  bool _isVideo(String extension) {
    return extension == 'mp4' ||
        extension == 'avi' ||
        extension == 'mov' ||
        extension == 'mkv' ||
        extension == 'm3u8' ||
        extension == 'webm';
  }

  bool _isImage(String extension) {
    return extension == 'jpg' ||
        extension == 'jpeg' ||
        extension == 'png' ||
        extension == 'gif' ||
        extension == 'webp';
  }

  String _getPlatformAsset(String platform) {
    switch (platform) {
      case 'tiktok':
        return AppAssets.tiktok;
      case 'facebook':
        return AppAssets.facebook;
      case 'reddit':
        return AppAssets.reddit;
      case 'pinterest':
        return AppAssets.pinterest;
      default:
        return AppAssets.instagram;
    }
  }
}
