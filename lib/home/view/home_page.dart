import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/common_methods.dart';
import '../../search/view/search_page.dart';
import '../../utils/colors.dart';
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
        automaticallyImplyLeading: false,
        elevation: 5,
        surfaceTintColor: Colors.transparent,
        backgroundColor: primary,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: 35,
              left: 10,
              right: 10,
              child: Row(
                children: [
                  Builder(builder: (context) {
                    return IconButton(
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      icon: const Icon(FluentIcons.list_16_filled),
                      color: Colors.white,
                    );
                  }),
                  const Text(
                    'Explore',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FluentIcons.shopping_bag_24_filled),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: primary,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(
                top: 0,
                bottom: 15,
                left: 20,
                right: 20,
              ),
              title: InkWell(
                onTap: () => Navigator.of(context).push(
                  buildPageRoute(const SearchPage()),
                ),
                child: Container(
                  height: 40,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search),
                      Text(
                        'Search something!',
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            floating: true,
          ),
          SliverList.builder(
            itemBuilder: (context, index) => const Card(
              child: SizedBox(
                width: 100,
                height: 100,
              ),
            ),
            itemCount: 20,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/drawer_header.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox.shrink(),
            ),
            ListTile(
              leading: const Icon(FluentIcons.building_shop_24_regular),
              title: const Text('Home'),
              selected: true,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:
                  const Icon(FluentIcons.line_horizontal_4_search_20_regular),
              title: const Text('Search'),
              selected: false,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  buildPageRoute(const SearchPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(FluentIcons.collections_24_regular),
              title: const Text('Categories'),
              selected: false,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(FluentIcons.heart_48_regular),
              title: const Text('Wishlist'),
              selected: false,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(FluentIcons.history_48_regular),
              title: const Text('Order History'),
              selected: false,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
