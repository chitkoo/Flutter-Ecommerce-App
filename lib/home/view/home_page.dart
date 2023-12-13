import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../search/view/search_page.dart';
import '../../shop/shop.dart';
import '../../wishlist/view/wishlist_page.dart';
import '../cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select(
      (HomeCubit cubit) => cubit.state.tabIndex,
    );

    return Scaffold(
      body: IndexedStack(
        index: selectedTab,
        children: const [
          ShopPage(),
          WishlistPage(),
          SearchPage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedTab,
        onDestinationSelected: (index) =>
            context.read<HomeCubit>().onChangedTab(index),
        destinations: const [
          NavigationDestination(
            icon: Icon(CupertinoIcons.home),
            label: 'Shop',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.heart),
            label: 'Wishlist',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.time),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
