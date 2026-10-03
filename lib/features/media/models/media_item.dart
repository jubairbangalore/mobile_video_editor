enum MediaType {
  video,
  image,
}

class MediaItem {
  final String path;
  final MediaType type;
  final Duration? duration;

  const MediaItem({
    required this.path,
    required this.type,
    this.duration,
  });

  bool get isVideo => type == MediaType.video;
  bool get isImage => type == MediaType.image;
}