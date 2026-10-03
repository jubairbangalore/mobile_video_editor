import 'package:flutter/material.dart';

class EnhanceTool extends StatefulWidget {
  const EnhanceTool({
    super.key,
  });

  @override
  State<EnhanceTool> createState() => _EnhanceToolState();
}

class _EnhanceToolState extends State<EnhanceTool> {
  double sharpness = 0;
  double clarity = 0;
  double noiseReduction = 0;

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
              'Enhance',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Improve video clarity, sharpness, and overall quality.',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),
            _EnhanceSlider(
              label: 'Sharpness',
              value: sharpness,
              onChanged: (value) {
                setState(() {
                  sharpness = value;
                });
              },
            ),
            _EnhanceSlider(
              label: 'Clarity',
              value: clarity,
              onChanged: (value) {
                setState(() {
                  clarity = value;
                });
              },
            ),
            _EnhanceSlider(
              label: 'Noise Reduction',
              value: noiseReduction,
              onChanged: (value) {
                setState(() {
                  noiseReduction = value;
                });
              },
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.auto_awesome),
                label: const Text('Auto Enhance'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EnhanceSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const _EnhanceSlider({
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