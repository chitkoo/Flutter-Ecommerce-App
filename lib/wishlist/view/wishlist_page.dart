import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const WishListView();
  }
}

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('My Wishlist'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.cart,
                ),
              ),
            ],
            floating: true,
          ),
          // SliverPadding(
          //   padding: EdgeInsets.symmetric(vertical: 3.w),
          //   sliver: SliverGrid.builder(
          //     addAutomaticKeepAlives: false,
          //     addRepaintBoundaries: false,
          //     itemCount: 10,
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       mainAxisSpacing: 5.w,
          //     ),
          //     itemBuilder: (BuildContext context, int index) {
          //       return const ProductCard();
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
