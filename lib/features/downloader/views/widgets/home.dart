import 'dart:developer';

import 'package:doris_downloader/core/config/theme.dart';
import 'package:doris_downloader/core/constants/assets.dart';
import 'package:doris_downloader/core/error_handling/contexts/error_handler.dart';
import 'package:doris_downloader/features/downloader/logic/provider.dart';
import 'package:doris_downloader/features/downloader/views/widgets/button.dart';
import 'package:doris_downloader/features/downloader/views/widgets/dialog.dart';
import 'package:doris_downloader/features/downloader/views/widgets/input.dart';
import 'package:doris_downloader/features/downloader/views/widgets/platform_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeWidget extends ConsumerWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final controller = TextEditingController();
    final downloaderNotifier = ref.watch(downloaderNotifierProvider);
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 50.0,
            ),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // input field
                InputWidget(controller: controller, formKey: formKey),

                // Row of buttons
                Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ButtonWidget(
                      text: 'Download',
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          if (!downloaderNotifier.isLoading) {
                            showOverlay(context);
                            await asyncErrorWrapper(
                              () async {
                                await ref
                                    .read(downloaderNotifierProvider.notifier)
                                    .download(controller.text.trim());
                              },
                              context: context,
                              errorMessage: 'Failed to download',
                              successMessage: 'Download Completed!',
                              finallyOperation: () {
                                if (context.mounted) {
                                  context.pop();
                                }
                                ref.invalidate(downloaderNotifierProvider);
                              },
                            );
                            controller.clear();
                            ref.read(controllerProvider.notifier).state = '';
                          }
                        }
                      },
                      color: AppColors.primary,
                    ),
                    Consumer(
                      builder: (context, ref, child) {
                        final controllerState = ref.watch(controllerProvider);
                        return ButtonWidget(
                          text: controllerState.isEmpty ? 'Paste' : 'Clear',
                          onPressed: () async {
                            log('onPressed');
                            if (controller.text.isEmpty) {
                              Clipboard.getData(Clipboard.kTextPlain).then((
                                value,
                              ) {
                                log('value: ${value?.text}');
                                controller.text = value?.text ?? '';
                                ref.read(controllerProvider.notifier).state =
                                    value?.text ?? '';
                              });
                            } else {
                              controller.clear();
                              ref.read(controllerProvider.notifier).state = '';
                            }
                          },
                          color: AppColors.secondary,
                        );
                      },
                    ),
                  ],
                ),

                SizedBox(height: 32),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   'A simple video downloader for my mom. \n Doris Boakye',
                      //   style: TextStyle(
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      //   textAlign: TextAlign.center,
                      // ),
                      Column(
                        spacing: 24,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Supported Platforms:',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            spacing: 16,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PlatformContainer(
                                platformAsset: AppAssets.instagram,
                              ),
                              PlatformContainer(
                                platformAsset: AppAssets.facebook,
                              ),
                              PlatformContainer(
                                platformAsset: AppAssets.tiktok,
                              ),
                              PlatformContainer(
                                platformAsset: AppAssets.reddit,
                              ),
                              PlatformContainer(
                                platformAsset: AppAssets.pinterest,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
