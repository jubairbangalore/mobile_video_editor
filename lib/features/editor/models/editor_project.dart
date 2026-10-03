class EditorProject {
  final String id;
  final String name;
  final String? sourceVideoPath;

  const EditorProject({
    required this.id,
    required this.name,
    this.sourceVideoPath,
  });

  EditorProject copyWith({
    String? id,
    String? name,
    String? sourceVideoPath,
  }) {
    return EditorProject(
      id: id ?? this.id,
      name: name ?? this.name,
      sourceVideoPath: sourceVideoPath ?? this.sourceVideoPath,
    );
  }
}
