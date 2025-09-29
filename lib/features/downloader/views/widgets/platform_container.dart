
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class PlatformContainer extends ConsumerWidget {
  final String platformAsset;
  final double? size;
  const PlatformContainer({super.key, required this.platformAsset, this.size});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: size ?? 50,
      width: size ?? 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(128, 0, 0, 0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgPicture.asset(platformAsset),
      ),
    );
  }
}
