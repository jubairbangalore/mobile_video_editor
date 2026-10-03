import 'package:flutter_test/flutter_test.dart';

import 'package:mobile_video_editor/app.dart';

void main() {
  testWidgets('Video Editor app loads', (tester) async {
    await tester.pumpWidget(const VideoEditorApp());

    expect(find.text('Video Editor'), findsOneWidget);
    expect(find.text('Start Editing'), findsOneWidget);
  });
}