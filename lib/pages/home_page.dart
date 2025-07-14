import 'package:flutter/material.dart';
import 'category_page.dart';
import 'product_grid_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Banner
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?ixlib=rb-4.0.3&auto=format&fit=crop&w=1000&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Categories (from Task 4)
          SizedBox(
            height: 200, 
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: CategoriesRow(),
            ),
          ),
          // Featured Products (from Task 3)
          const Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Featured Products',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 400, // Fixed height to prevent infinite size
            child: const ProductGrid(),
          ),
        ],
      ),
    );
  }
}
