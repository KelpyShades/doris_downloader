import 'package:doris_downloader/features/downloader/views/home_screen.dart';
import 'package:doris_downloader/features/downloader/views/image_view_screen.dart';
import 'package:doris_downloader/features/downloader/views/video_play_screen.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:go_router/go_router.dart';

final routerProvider = StateProvider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    // redirect: (context, state) {
    //   return '/';
    // },
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/video_play',
        builder: (context, state) =>
            VideoPlayScreen(url: state.extra as String),
      ),
      GoRoute(
        path: '/image_view',
        builder: (context, state) =>
            ImageViewScreen(url: state.extra as String),
      ),
    ],
  );
});
