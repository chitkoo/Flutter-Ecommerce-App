import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/navbar_controller.dart';
import '../cart/cart_screen.dart';
import '../order_history/order_history_screen.dart';
import '../shop/shop_screen.dart';
import '../wishlist/wishlist_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const ShopScreen(),
      // const CartScreen(),
      const WishlistScreen(),
      const OrderHistoryScreen(),
    ];

    return GetBuilder<NavbarController>(
      builder: (NavbarController navbarController) {
        return Scaffold(
          body: IndexedStack(
            index: navbarController.tabIndex,
            children: pages,
          ),
          bottomNavigationBar: NavigationBar(
            selectedIndex: navbarController.tabIndex,
            onDestinationSelected: (value) =>
                navbarController.onChangedTab(value),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'Explore',
                selectedIcon: Icon(Icons.shopping_bag_rounded),
              ),
              // NavigationDestination(
              //   icon: Icon(Icons.shopping_cart_outlined),
              //   label: 'Cart',
              //   selectedIcon: Icon(Icons.shopping_cart_rounded),
              // ),
              NavigationDestination(
                icon: Icon(Icons.favorite_border_outlined),
                label: 'Wishlist',
                selectedIcon: Icon(Icons.favorite_rounded),
              ),
              NavigationDestination(
                icon: Icon(Icons.history_toggle_off_outlined),
                label: 'History',
                selectedIcon: Icon(Icons.history_toggle_off_rounded),
              ),
            ],
          ),
        );
      },
    );
  }
}
