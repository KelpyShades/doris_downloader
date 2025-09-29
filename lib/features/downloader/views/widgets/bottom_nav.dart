import 'package:doris_downloader/core/config/theme.dart';
import 'package:doris_downloader/features/downloader/logic/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavWidget extends ConsumerWidget {
  final int index;
  const BottomNavWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (index) {
        if (index == 1) {
          ref.read(unseenDownloadsProvider.notifier).state = false;
        }
        ref.read(indexProvider.notifier).state = index;
      },
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.text,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      iconSize: 24,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(Icons.download_rounded),
              if (ref.watch(unseenDownloadsProvider))
                Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(Icons.circle, size: 11, color: AppColors.primary),
                ),
            ],
          ),
          label: 'Downloads',
        ),
      ],
    );
  }
}
