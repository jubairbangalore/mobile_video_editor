import 'package:flutter/material.dart';

class EditorAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback onBack;

  const EditorAppBar({
    super.key,
    required this.onBack,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: IconButton(
        onPressed: onBack,
        icon: const Icon(Icons.arrow_back),
      ),
      title: const Text(
        'Editor',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.undo),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.redo),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Export'),
        ),
      ],
    );
  }
}