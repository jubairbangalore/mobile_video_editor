import 'package:flutter/material.dart';

import '../widgets/editor_app_bar.dart';
import '../widgets/editor_preview.dart';
import '../widgets/editor_playback_bar.dart';
import '../widgets/editor_timeline.dart';
import '../widgets/editor_tool_bar.dart';

class EditorScreen extends StatelessWidget {
  final String videoPath;

  const EditorScreen({
    super.key,
    required this.videoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: EditorAppBar(
        onBack: () {
          Navigator.of(context).pop();
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: EditorPreview(
              videoPath: videoPath,
            ),
          ),

          const EditorPlaybackBar(),

          const EditorTimeline(),

          const EditorToolBar(),
        ],
      ),
    );
  }
}