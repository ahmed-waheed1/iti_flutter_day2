// Task 8: Dashboard Grid with Icons
import 'package:flutter/material.dart';

class DashboardGrid extends StatelessWidget {
  const DashboardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {'icon': Icons.person, 'label': 'Profile'},
      {'icon': Icons.settings, 'label': 'Settings'},
      {'icon': Icons.shopping_bag, 'label': 'Orders'},
      {'icon': Icons.favorite, 'label': 'Wishlist'},
      {'icon': Icons.history, 'label': 'History'},
      {'icon': Icons.help, 'label': 'Help'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: items.map((item) {
          return Card(
            elevation: 4,
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      item['icon'] as IconData,
                      size: 40,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['label'] as String,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
