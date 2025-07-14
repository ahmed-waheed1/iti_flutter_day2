// Task 10: Card with Action Button
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  const ActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Action Card')),
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Flutter Development',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Flutter is Google\'s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward),
                      label: const Text('Read More'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
