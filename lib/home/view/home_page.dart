import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app/utils/colors.dart';

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
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        toolbarHeight: 100,
        backgroundColor: primary,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: 30,
              left: 10,
              right: 10,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () async {},
                    icon: const Icon(FluentIcons.list_16_filled),
                    color: Colors.white,
                  ),
                  const Text(
                    'Explore',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(FluentIcons.shopping_bag_percent_20_filled),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 20,
              left: 20,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Row(
                  children: [
                    Icon(FluentIcons.search_28_regular),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Search something'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return const Card(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Text('Test'),
            ),
          );
        },
        itemCount: 10,
      ),
      // body: IndexedStack(
      //   index: currentTabIndex,
      //   children: const [
      //     ExplorePage(),
      //     WishlistPage(),
      //   ],
      // ),
      // bottomNavigationBar: NavigationBar(
      //   elevation: 5,
      //   selectedIndex: currentTabIndex,
      //   onDestinationSelected: (value) =>
      //       context.read<HomeCubit>().onChangedTab(value),
      //   destinations: const <NavigationDestination>[
      //     NavigationDestination(
      //       icon: Icon(FluentIcons.building_shop_24_filled),
      //       label: 'Explore',
      //     ),
      //     NavigationDestination(
      //       icon: Icon(Icons.ac_unit),
      //       label: 'Wishlist',
      //     ),
      //   ],
      // ),
    );
  }
}
