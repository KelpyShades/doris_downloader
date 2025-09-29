import 'dart:async';
import 'dart:developer';

import 'package:doris_downloader/core/config/routes.dart';
import 'package:doris_downloader/core/config/theme.dart';
import 'package:doris_downloader/features/downloader/logic/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sharing_intent/flutter_sharing_intent.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await dotenv.load();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  late StreamSubscription _intentSub;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _initSharedIntents();
  }

  void _initSharedIntents() {
    // Listen to media sharing coming from outside the app while the app is in the memory.
    _intentSub = FlutterSharingIntent.instance.getMediaStream().listen(
      (value) {
        if (value.isEmpty) return;
        log('value: ${value.first.value}');

        _handleSharedText(value.first.value ?? '');
      },
      onError: (err) {
        log("getIntentDataStream error: $err");
      },
    );

    // Get the media sharing coming from outside the app while the app is closed.
    FlutterSharingIntent.instance.getInitialSharing().then((value) {
      if (value.isEmpty) return;
      log('value: ${value.first.value}');
      _handleSharedText(value.first.value ?? '');
    });
  }

  // [log] value: { value:https://www.ghanaweb.com/GhanaHomePage/business/Richard-Nii-Armah-Quaye-gains-international-recognition-with-Forbes-2002679, thumbnail:null, duration:null, type:SharedMediaType.URL }

  void _handleSharedText(String sharedText) {
    ref.read(sharedProvider.notifier).state = sharedText;
    FlutterSharingIntent.instance.reset();
  }

  @override
  void dispose() {
    _intentSub.cancel();
    FlutterSharingIntent.instance.reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp.router(
      title: 'Doris',
      theme: ref.watch(appThemeProvider),
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider),
    );
  }
}
