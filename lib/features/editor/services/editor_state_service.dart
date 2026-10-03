import 'package:flutter/foundation.dart';

class EditorStateService extends ChangeNotifier {
  Duration currentPosition = Duration.zero;
  Duration duration = Duration.zero;

  double playbackSpeed = 1.0;

  bool isPlaying = false;

  void updatePosition(Duration position) {
    currentPosition = position;
    notifyListeners();
  }

  void updateDuration(Duration value) {
    duration = value;
    notifyListeners();
  }

  void setPlaying(bool value) {
    isPlaying = value;
    notifyListeners();
  }

  void setPlaybackSpeed(double value) {
    playbackSpeed = value;
    notifyListeners();
  }

  void reset() {
    currentPosition = Duration.zero;
    duration = Duration.zero;
    playbackSpeed = 1.0;
    isPlaying = false;

    notifyListeners();
  }
}