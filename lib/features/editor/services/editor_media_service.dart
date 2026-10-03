import 'dart:io';

import 'package:path_provider/path_provider.dart';

class EditorMediaService {
  Future<String> importVideo(String sourcePath) async {
    final sourceFile = File(sourcePath);

    if (!await sourceFile.exists()) {
      throw Exception('Source video not found.');
    }

    final appDirectory = await getApplicationDocumentsDirectory();

    final projectDirectory = Directory(
      '${appDirectory.path}/projects',
    );

    if (!await projectDirectory.exists()) {
      await projectDirectory.create(
        recursive: true,
      );
    }

    final fileName = sourceFile.uri.pathSegments.last;

    final destinationFile = File(
      '${projectDirectory.path}/$fileName',
    );

    final savedFile = await sourceFile.copy(
      destinationFile.path,
    );

    return savedFile.path;
  }

  Future<bool> fileExists(String path) async {
    return File(path).exists();
  }

  Future<int> getFileSize(String path) async {
    final file = File(path);

    if (!await file.exists()) {
      return 0;
    }

    return file.length();
  }

  Future<void> deleteMedia(String path) async {
    final file = File(path);

    if (await file.exists()) {
      await file.delete();
    }
  }
}