import 'package:flutter/material.dart';

class TransitionTool extends StatelessWidget {
  const TransitionTool({
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
            'Transition',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Add a transition between two clips.',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _TransitionButton(label: 'None'),
              _TransitionButton(label: 'Fade'),
              _TransitionButton(label: 'Dissolve'),
              _TransitionButton(label: 'Slide'),
              _TransitionButton(label: 'Zoom'),
              _TransitionButton(label: 'Wipe'),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.tune),
              label: const Text('Transition Duration'),
            ),
          ),
        ],
      ),
    );
  }
}

class _TransitionButton extends StatelessWidget {
  final String label;

  const _TransitionButton({
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