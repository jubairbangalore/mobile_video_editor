import 'package:flutter/material.dart';

import '../widgets/home_action_button.dart';
import '../widgets/home_header.dart';
import '../widgets/new_project_card.dart';
import '../widgets/recent_projects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? recentVideoPath;

  void setRecentVideo(String path) {
    setState(() {
      recentVideoPath = path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const HomeHeader(),

            NewProjectCard(
              onVideoSelected: setRecentVideo,
            ),

            Row(
              children: [
                HomeActionButton(
                  icon: Icons.video_library_outlined,
                  label: 'Videos',
                  onTap: () {},
                ),
                HomeActionButton(
                  icon: Icons.photo_library_outlined,
                  label: 'Photos',
                  onTap: () {},
                ),
                HomeActionButton(
                  icon: Icons.music_note_outlined,
                  label: 'Audio',
                  onTap: () {},
                ),
              ],
            ),

            RecentProjects(
              videoPath: recentVideoPath,
            ),
          ],
        ),
      ),
    );
  }
}