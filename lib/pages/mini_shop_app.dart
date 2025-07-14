import 'package:flutter/material.dart';
import '../main.dart';
import 'home_page.dart';
import 'product_details_page.dart';
import 'user_profile_page.dart';

class MiniShopApp extends StatelessWidget {
  const MiniShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MyShop'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.shopping_cart), text: 'Products'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [HomePage(), ProductDetailsPage(), UserProfilePage()],
        ),
      ),
    );
  }
}
