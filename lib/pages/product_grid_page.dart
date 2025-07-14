// Task 3: Product Grid
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {'name': 'Smartphone', 'price': '\$599', 'image': 'assets/phone.webp'},
      {'name': 'Laptop', 'price': '\$999', 'image': 'assets/laptop.jpeg'},
      {
        'name': 'Headphones',
        'price': '\$199',
        'image': 'assets/headphones.jpg',
      },
      {'name': 'Smartwatch', 'price': '\$299', 'image': 'assets/watch.webp'},
      {'name': 'Tablet', 'price': '\$399', 'image': 'assets/tablet.jpeg'},
      {'name': 'Camera', 'price': '\$499', 'image': 'assets/camera.jpeg'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Product Grid')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8),
        children: products.map((product) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                    child: Image.asset(
                      product['image']!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['name']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        product['price']!,
                        style: const TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
