// Task 4: Horizontal Categories Row
import 'package:flutter/material.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['Home', 'Fashion', 'Tech', 'Beauty'];

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: categories.map((category) {
              return Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      category,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
