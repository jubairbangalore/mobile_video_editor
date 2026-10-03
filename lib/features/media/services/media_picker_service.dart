import 'package:image_picker/image_picker.dart';

import '../models/media_item.dart';

class MediaPickerService {
  final ImagePicker _picker = ImagePicker();

  Future<List<MediaItem>> pickMedia() async {
    final files = await _picker.pickMultipleMedia();

    final media = <MediaItem>[];

    for (final file in files) {
      final type = _getMediaType(file);

      media.add(
        MediaItem(
          path: file.path,
          type: type,
        ),
      );
    }

    return media;
  }

  MediaType _getMediaType(XFile file) {
    final mimeType = file.mimeType?.toLowerCase();

    if (mimeType != null) {
      if (mimeType.startsWith('video/')) {
        return MediaType.video;
      }

      if (mimeType.startsWith('image/')) {
        return MediaType.image;
      }
    }

    final name = file.name.toLowerCase();

    const videoExtensions = [
      '.mp4',
      '.mov',
      '.mkv',
      '.webm',
      '.avi',
      '.3gp',
      '.m4v',
    ];

    for (final extension in videoExtensions) {
      if (name.endsWith(extension)) {
        return MediaType.video;
      }
    }

    return MediaType.image;
  }
}