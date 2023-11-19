import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../explore/explore.dart';
import '../../wishlist/wishlist.dart';
import '../cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final currentTabIndex = context.select(
      (HomeCubit cubit) => cubit.state.tabIndex,
    );

    return Scaffold(
      body: IndexedStack(
        index: currentTabIndex,
        children: const [
          ExplorePage(),
          WishlistPage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentTabIndex,
        onDestinationSelected: (value) =>
            context.read<HomeCubit>().onChangedTab(value),
        destinations: const <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.abc), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.ac_unit), label: 'Wishlist'),
        ],
      ),
    );
  }
}
