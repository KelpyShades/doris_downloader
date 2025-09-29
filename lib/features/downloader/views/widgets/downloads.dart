import 'dart:typed_data';

import 'package:doris_downloader/features/downloader/logic/provider.dart';
import 'package:doris_downloader/features/downloader/views/widgets/downloads_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DownloadsWidget extends ConsumerWidget {
  const DownloadsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadedFiles = ref.watch(downloadedFilesProvider);
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: constraints.maxHeight),
              child: downloadedFiles.when(
                data: (data) {
                  if (data.isEmpty) {
                    return const Center(child: Text('No downloads yet'));
                  }
                  final files = data.reversed.toList();
                  final thumbnails = ref.watch(thumbnailsProvider);
                  return ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: files.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DownloadsCard(
                          file: files[index],
                          thumbnail: thumbnails.maybeWhen(
                            data: (data) => data[index],
                            orElse: () => Uint8List(0),
                          ),
                        ),
                      );
                    },
                  );
                },
                error: (error, stackTrace) => Text('Error: $error'),
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
          );
        },
      ),
    );
  }
}
