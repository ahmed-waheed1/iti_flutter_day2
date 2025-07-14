import 'package:flutter/material.dart';

import 'pages/about_me.dart';
import 'pages/action_card.dart';
import 'pages/category_page.dart';
import 'pages/contact_info_list.dart';
import 'pages/dashboard_grid.dart';
import 'pages/mini_shop_app.dart';
import 'pages/product_grid_page.dart';
import 'pages/product_list.dart';
import 'pages/profile_page.dart';
import 'pages/recipe_page.dart';
import 'pages/travel_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Day 5 Lab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TaskSelectionScreen(),
    );
  }
}

class TaskSelectionScreen extends StatelessWidget {
  const TaskSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Day 5 Lab Tasks')),
      body: ListView(
        children: [
          _buildTaskCard(
            context,
            'Task 1: Personal Profile Card',
            const ProfileCard(),
          ),
          _buildTaskCard(
            context,
            'Task 2: Contact Info List',
            const ContactList(),
          ),
          _buildTaskCard(context, 'Task 3: Product Grid', const ProductGrid()),
          _buildTaskCard(
            context,
            'Task 4: Horizontal Categories',
            const CategoriesRow(),
          ),
          _buildTaskCard(
            context,
            'Task 5: Travel Destination Card',
            const DestinationCard(),
          ),
          _buildTaskCard(context, 'Task 6: Recipe Card', const RecipeCard()),
          _buildTaskCard(context, 'Task 7: Product List', const ProductList()),
          _buildTaskCard(
            context,
            'Task 8: Dashboard Grid',
            const DashboardGrid(),
          ),
          _buildTaskCard(context, 'Task 9: About Me', const AboutMeScreen()),
          _buildTaskCard(
            context,
            'Task 10: Action Button Card',
            const ActionCard(),
          ),
          _buildTaskCard(
            context,
            'Final Project: Mini Shop',
            const MiniShopApp(),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskCard(BuildContext context, String title, Widget screen) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
      ),
    );
  }
}
