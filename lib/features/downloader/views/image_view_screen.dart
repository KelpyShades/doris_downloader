import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageViewScreen extends ConsumerStatefulWidget {
  final String url;
  const ImageViewScreen({super.key, required this.url});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ImageViewScreenState();
}

class _ImageViewScreenState extends ConsumerState<ImageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Center(child: Image.file(File(widget.url), fit: BoxFit.cover)),
    );
  }
}
