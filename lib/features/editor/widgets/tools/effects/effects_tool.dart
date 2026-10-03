import 'package:flutter/material.dart';

class EffectsTool extends StatelessWidget {
  const EffectsTool({
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
            'Effects',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Add visual effects to the selected clip.',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _EffectButton(label: 'Blur'),
              _EffectButton(label: 'Glow'),
              _EffectButton(label: 'Shake'),
              _EffectButton(label: 'Vignette'),
              _EffectButton(label: 'Cinematic'),
            ],
          ),
        ],
      ),
    );
  }
}

class _EffectButton extends StatelessWidget {
  final String label;

  const _EffectButton({
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