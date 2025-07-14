import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Premium Smartphone',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            '\$599',
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          const SizedBox(height: 16),
          const Text(
            'Description',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'This premium smartphone features a 6.5" AMOLED display, 128GB storage, 8GB RAM, and a triple camera system with 48MP main sensor. With all-day battery life and fast charging, it\'s perfect for power users.',
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text('Add to Cart'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
