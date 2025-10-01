import 'package:doris_downloader/features/downloader/views/home_screen.dart';
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
    ],
  );
});
