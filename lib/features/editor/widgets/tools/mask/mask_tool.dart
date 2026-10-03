import 'package:flutter/material.dart';

class MaskTool extends StatelessWidget {
  const MaskTool({
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
            'Mask',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Hide or reveal selected areas of a video using different mask shapes.',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _MaskButton(
                icon: Icons.crop_square,
                label: 'Rectangle',
              ),
              _MaskButton(
                icon: Icons.circle_outlined,
                label: 'Circle',
              ),
              _MaskButton(
                icon: Icons.change_history,
                label: 'Triangle',
              ),
              _MaskButton(
                icon: Icons.star_border,
                label: 'Custom',
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.tune),
              label: const Text('Mask Settings'),
            ),
          ),
        ],
      ),
    );
  }
}

class _MaskButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _MaskButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon),
      label: Text(label),
    );
  }
}