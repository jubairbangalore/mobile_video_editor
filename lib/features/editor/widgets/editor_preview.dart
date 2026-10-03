import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class EditorPreview extends StatefulWidget {
  final String videoPath;

  const EditorPreview({
    super.key,
    required this.videoPath,
  });

  @override
  State<EditorPreview> createState() => _EditorPreviewState();
}

class _EditorPreviewState extends State<EditorPreview> {
  late final VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.file(
      File(widget.videoPath),
    )
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Center(
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: VideoPlayer(_controller),
      ),
    );
  }
}