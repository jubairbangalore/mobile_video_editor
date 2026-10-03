import 'package:flutter/material.dart';

class EditorTimeline extends StatelessWidget {
  const EditorTimeline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Timeline',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  'Video Timeline',
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}