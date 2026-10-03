import 'package:flutter/material.dart';

class AdjustTool extends StatefulWidget {
  const AdjustTool({
    super.key,
  });

  @override
  State<AdjustTool> createState() => _AdjustToolState();
}

class _AdjustToolState extends State<AdjustTool> {
  double brightness = 0;
  double contrast = 0;
  double saturation = 0;
  double temperature = 0;

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
              'Adjust',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Fine-tune the color and lighting of your video.',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),
            _AdjustmentSlider(
              label: 'Brightness',
              value: brightness,
              onChanged: (value) {
                setState(() {
                  brightness = value;
                });
              },
            ),
            _AdjustmentSlider(
              label: 'Contrast',
              value: contrast,
              onChanged: (value) {
                setState(() {
                  contrast = value;
                });
              },
            ),
            _AdjustmentSlider(
              label: 'Saturation',
              value: saturation,
              onChanged: (value) {
                setState(() {
                  saturation = value;
                });
              },
            ),
            _AdjustmentSlider(
              label: 'Temperature',
              value: temperature,
              onChanged: (value) {
                setState(() {
                  temperature = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _AdjustmentSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;

  const _AdjustmentSlider({
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
          min: -100,
          max: 100,
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}