import 'package:flutter/material.dart';

import '../cart/cart_screen.dart';
import '../shop/shop_screen.dart';
import '../order_history/order_history_screen.dart';
import '../wishlist/wishlist_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const ShopScreen(),
      const CartScreen(),
      const WishlistScreen(),
      const OrderHistoryScreen(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: 0,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'Shop',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_rounded),
            label: 'Wishlist',
          ),
          NavigationDestination(
            icon: Icon(Icons.history_toggle_off_rounded),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
