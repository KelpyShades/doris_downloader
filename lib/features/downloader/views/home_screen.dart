import 'dart:developer';
import 'package:doris_downloader/core/constants/assets.dart';
import 'package:doris_downloader/core/error_handling/contexts/error_handler.dart';
import 'package:doris_downloader/core/utils/validation.dart';
import 'package:doris_downloader/features/downloader/logic/provider.dart';
import 'package:doris_downloader/features/downloader/views/widgets/home.dart';
import 'package:doris_downloader/features/downloader/views/widgets/dialog.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _autoStart();
  }

  void _autoStart() async {
    String url = '';
    log('autoStart');
    Clipboard.getData(Clipboard.kTextPlain).then((value) {
      url = value?.text ?? '';
      if (ref.read(sharedProvider).isNotEmpty) {
        url = ref.read(sharedProvider);
      }
      if (url.isEmpty) return;
      String? error = validateUrl(url);
      log('validateUrl error: $error');
      if (error != null) return;
      if (!ref.read(downloaderNotifierProvider).isLoading && mounted) {
        showOverlay(context);
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          await asyncErrorWrapper(
            () async {
              await ref
                  .read(downloaderNotifierProvider.notifier)
                  .download(url.trim());
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
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(AppAssets.logo, height: 30, width: 30),
        ),
        leadingWidth: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: HomeWidget(),
    );
  }
}
