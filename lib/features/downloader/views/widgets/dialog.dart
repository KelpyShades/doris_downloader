import 'package:doris_downloader/core/config/theme.dart';
import 'package:doris_downloader/core/constants/assets.dart';
import 'package:doris_downloader/features/downloader/logic/provider.dart';
import 'package:doris_downloader/features/downloader/views/widgets/platform_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void showOverlay(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Consumer(
      builder: (context, ref, child) {
        final downloaderNotifier = ref.watch(downloaderNotifierProvider);
        final downloadPercentage = ref.watch(downloadPercentageProvider);
        String modelAsset;

        switch (ref.read(modelProvider)) {
          case 'facebook':
            modelAsset = AppAssets.facebook;
            break;
          case 'tiktok':
            modelAsset = AppAssets.tiktok;
            break;
          case 'reddit':
            modelAsset = AppAssets.reddit;
            break;
          case 'pinterest':
            modelAsset = AppAssets.pinterest;
            break;
          default:
            modelAsset = AppAssets.instagram;
            break;
        }


        return Dialog(
          constraints: BoxConstraints(
            maxHeight: 175,
            maxWidth: 175,
            minHeight: 175,
            minWidth: 175,
          ),
          backgroundColor: AppColors.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (downloaderNotifier.progress == 0) ...[
                Text(
                  'Fetching Data',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                CircularProgressIndicator(color: AppColors.primary),
              ] else ...[
                PlatformContainer(platformAsset: modelAsset, size: 60),
                Text(
                  '$downloadPercentage%',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
        );
      },
    ),
  );
}
