import 'package:flutter/material.dart';

import '../../editor/screens/editor_screen.dart';
import '../../editor/services/editor_media_service.dart';
import '../../media/services/media_picker_service.dart';

class NewProjectCard extends StatelessWidget {
  final ValueChanged<String> onVideoSelected;

  const NewProjectCard({
    super.key,
    required this.onVideoSelected,
  });

  Future<void> _pickMedia(BuildContext context) async {
    final mediaPickerService = MediaPickerService();

    final media = await mediaPickerService.pickMedia();

    if (!context.mounted || media.isEmpty) {
      return;
    }

    final video = media.where((item) => item.isVideo).firstOrNull;

    if (video == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a video.'),
        ),
      );
      return;
    }

    try {
      final mediaService = EditorMediaService();

      final savedVideoPath = await mediaService.importVideo(
        video.path,
      );

      if (!context.mounted) {
        return;
      }

      onVideoSelected(savedVideoPath);

      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => EditorScreen(
            videoPath: savedVideoPath,
          ),
        ),
      );
    } catch (error) {
      if (!context.mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Video import failed: $error',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => _pickMedia(context),
          child: const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Project',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Import a video or photo',
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}