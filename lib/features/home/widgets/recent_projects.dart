import 'dart:io';

import 'package:flutter/material.dart';

class RecentProjects extends StatelessWidget {
  final String? videoPath;

  const RecentProjects({
    super.key,
    this.videoPath,
  });

  @override
  Widget build(BuildContext context) {
    if (videoPath == null || videoPath!.isEmpty) {
      return const Padding(
        padding: EdgeInsets.fromLTRB(20, 24, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recent Projects',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'No projects yet',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recent Projects',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.video_file_outlined),
              ),
              title: Text(
                File(videoPath!).uri.pathSegments.last,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text('Video project'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
        ],
      ),
    );
  }
}