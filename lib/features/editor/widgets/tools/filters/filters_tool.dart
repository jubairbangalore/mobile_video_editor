import 'package:flutter/material.dart';

class FiltersTool extends StatelessWidget {
  const FiltersTool({
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
            'Filters',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Apply a color filter to the selected clip.',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _FilterButton(label: 'Original'),
              _FilterButton(label: 'Warm'),
              _FilterButton(label: 'Cool'),
              _FilterButton(label: 'Vintage'),
              _FilterButton(label: 'B&W'),
              _FilterButton(label: 'Cinematic'),
            ],
          ),
        ],
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final String label;

  const _FilterButton({
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