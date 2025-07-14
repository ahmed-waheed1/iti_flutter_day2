// Task 7: Scrollable Product List
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'name': 'Wireless Earbuds',
        'price': '\$99',
        'image': 'assets/earbuds.webp',
      },
      {
        'name': 'Bluetooth Speaker',
        'price': '\$129',
        'image': 'assets/speaker.webp',
      },
      {'name': 'Gaming Mouse', 'price': '\$59', 'image': 'assets/mouse.webp'},
      {
        'name': 'Mechanical Keyboard',
        'price': '\$89',
        'image': 'assets/keyboard.webp',
      },
      {'name': 'External SSD', 'price': '\$149', 'image': 'assets/ssd.jpeg'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 2,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(4),
                  ),
                  child: Image.asset(
                    products[index]['image']!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index]['name']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          products[index]['price']!,
                          style: const TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
