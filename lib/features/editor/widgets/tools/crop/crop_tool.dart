import 'package:flutter/material.dart';

class CropTool extends StatelessWidget {
  const CropTool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Crop',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Crop the video frame and choose a preferred aspect ratio.',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _RatioButton(label: 'Free'),
              _RatioButton(label: '16:9'),
              _RatioButton(label: '9:16'),
              _RatioButton(label: '1:1'),
              _RatioButton(label: '4:5'),
              _RatioButton(label: '4:3'),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.crop),
              label: const Text('Apply Crop'),
            ),
          ),
        ],
      ),
    );
  }
}

class _RatioButton extends StatelessWidget {
  final String label;

  const _RatioButton({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(label),
    );
  }
}