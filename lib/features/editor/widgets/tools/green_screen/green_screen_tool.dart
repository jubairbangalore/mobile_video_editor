import 'package:flutter/material.dart';

class GreenScreenTool extends StatefulWidget {
  const GreenScreenTool({
    super.key,
  });

  @override
  State<GreenScreenTool> createState() => _GreenScreenToolState();
}

class _GreenScreenToolState extends State<GreenScreenTool> {
  double intensity = 50;
  double spillReduction = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Green Screen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Remove a green or selected color background from your video.',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.colorize),
                label: const Text('Select Key Color'),
              ),
            ),
            const SizedBox(height: 20),
            _GreenScreenSlider(
              label: 'Intensity',
              value: intensity,
              onChanged: (value) {
                setState(() {
                  intensity = value;
                });
              },
            ),
            _GreenScreenSlider(
              label: 'Spill Reduction',
              value: spillReduction,
              onChanged: (value) {
                setState(() {
                  spillReduction = value;
                });
              },
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.auto_awesome),
                label: const Text('Auto Remove'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GreenScreenSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const _GreenScreenSlider({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text(
              value.toStringAsFixed(0),
              style: const TextStyle(
                color: Colors.white54,
              ),
            ),
          ],
        ),
        Slider(
          min: 0,
          max: 100,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}