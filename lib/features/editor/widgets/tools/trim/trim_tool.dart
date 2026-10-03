import 'package:flutter/material.dart';

class TrimTool extends StatelessWidget {
  const TrimTool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Trim',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Select the start and end points of your video.',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text(
                'Trim Controls',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}