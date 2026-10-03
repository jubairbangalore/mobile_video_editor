import 'package:flutter/material.dart';

import 'editor_tool_item.dart';

class EditorToolBar extends StatelessWidget {
  const EditorToolBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      decoration: const BoxDecoration(
        color: Color(0xFF111111),
        border: Border(
          top: BorderSide(
            color: Colors.white12,
          ),
        ),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        children: [
          EditorToolItem(
            icon: Icons.content_cut,
            label: 'Trim',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.call_split,
            label: 'Split',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.speed,
            label: 'Speed',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.music_note,
            label: 'Audio',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.text_fields,
            label: 'Text',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.layers,
            label: 'Overlay',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.auto_awesome,
            label: 'Effects',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.filter,
            label: 'Filters',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.tune,
            label: 'Adjust',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.crop,
            label: 'Crop',
            onTap: () {},
          ),
          EditorToolItem(
            icon: Icons.rotate_right,
            label: 'Rotate',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}