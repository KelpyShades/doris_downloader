import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayScreen extends ConsumerStatefulWidget {
  final String url;
  const VideoPlayScreen({super.key, required this.url});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VideoPlayScreenState();
}

class _VideoPlayScreenState extends ConsumerState<VideoPlayScreen> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  void _initializeVideoPlayer() async {
    log('initializeVideoPlayer');
    log('widget.url: ${widget.url}');
    videoPlayerController = VideoPlayerController.file(File(widget.url));
    await videoPlayerController.initialize();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Chewie(controller: chewieController),
    );
  }
}
