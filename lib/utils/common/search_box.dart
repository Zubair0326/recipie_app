import 'package:flutter/material.dart';

class RSearchbox extends StatelessWidget {
  const RSearchbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ensures it matches the available width
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey),
          const SizedBox(width: 20),
          Text(
            'Search Recipe',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}