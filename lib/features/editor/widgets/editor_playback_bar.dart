import 'package:flutter/material.dart';

class EditorPlaybackBar extends StatelessWidget {
  const EditorPlaybackBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.skip_previous),
          ),
          const SizedBox(width: 8),
          Container(
            width: 44,
            height: 44,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {},
              color: Colors.black,
              icon: const Icon(Icons.play_arrow),
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.skip_next),
          ),
        ],
      ),
    );
  }
}