import 'package:flutter/material.dart';

class SpeedTool extends StatelessWidget {
  const SpeedTool({
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
            'Speed',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Change the playback speed of the selected clip.',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _SpeedButton(label: '0.5x'),
              _SpeedButton(label: '1x'),
              _SpeedButton(label: '1.5x'),
              _SpeedButton(label: '2x'),
              _SpeedButton(label: '4x'),
            ],
          ),
        ],
      ),
    );
  }
}

class _SpeedButton extends StatelessWidget {
  final String label;

  const _SpeedButton({
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