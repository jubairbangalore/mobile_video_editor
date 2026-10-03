import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/home/screens/home_screen.dart';

class VideoEditorApp extends StatelessWidget {
  const VideoEditorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Editor',
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}