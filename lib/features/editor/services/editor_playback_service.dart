import 'package:video_player/video_player.dart';

class EditorPlaybackService {
  Future<void> play(VideoPlayerController controller) async {
    if (!controller.value.isInitialized) {
      return;
    }

    await controller.play();
  }

  Future<void> pause(VideoPlayerController controller) async {
    if (!controller.value.isInitialized) {
      return;
    }

    await controller.pause();
  }

  Future<void> togglePlayPause(
    VideoPlayerController controller,
  ) async {
    if (!controller.value.isInitialized) {
      return;
    }

    if (controller.value.isPlaying) {
      await controller.pause();
    } else {
      await controller.play();
    }
  }

  Future<void> seekTo(
    VideoPlayerController controller,
    Duration position,
  ) async {
    if (!controller.value.isInitialized) {
      return;
    }

    await controller.seekTo(position);
  }

  Future<void> setSpeed(
    VideoPlayerController controller,
    double speed,
  ) async {
    if (!controller.value.isInitialized) {
      return;
    }

    await controller.setPlaybackSpeed(speed);
  }
}