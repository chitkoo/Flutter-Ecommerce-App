import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/search/view/search_page.dart';

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
        toolbarHeight: 110,
        backgroundColor: primary,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: 30,
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
            Positioned(
              bottom: 10,
              right: 10,
              left: 20,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(FluentIcons.search_28_regular),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Search something!',
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.tune_rounded),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
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
              title: const Text('Home'),
              selected: true,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Search'),
              selected: false,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (
                      BuildContext context,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation,
                    ) =>
                        const SearchPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(1.0, 0.0);
                      const end = Offset.zero;
                      // final tween =
                      //     Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.ease));
                      final tween = Tween(begin: begin, end: end);
                      // final offsetAnimation = animation.drive(tween);

                      const curve = Curves.ease;

                      final curvedAnimation =
                          CurvedAnimation(parent: animation, curve: curve);
                      return SlideTransition(
                        position: tween.animate(curvedAnimation),
                        child: child,
                      );

                      // return FadeTransition(
                      //   opacity: CurveTween(curve: Curves.easeIn).animate(animation),
                      //   child: child,
                      // );
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Categories'),
              selected: false,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Wishlist'),
              selected: false,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Shopping Bag'),
              selected: false,
              selectedColor: primary,
              onTap: () {
                Navigator.pop(context);
              },
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
    );
  }
}
