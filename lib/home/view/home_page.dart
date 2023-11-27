import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app/collections/collections.dart';
import 'package:shopping_app/models/laptop_collection.dart';
import 'package:shopping_app/utils/values.dart';

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
          SliverFillViewport(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListView(
                  padding: EdgeInsets.all(2.5.w),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/drawer_header.jpg',
                        width: double.infinity,
                        height: 50.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 2.5.w,
                    ),
                    _CollectionTitleWidget(
                      title: 'Notebooks Collection',
                      ontap: () {
                        Navigator.of(context).push(
                          buildPageRoute(
                            const CollectionPage(title: 'Notebooks Collection'),
                          ),
                        );
                      },
                    ),
                    _CollectionListWidget(
                      collectionList: laptopsCollection,
                      onItemTapped: (String type) {
                        Navigator.of(context).push(
                          buildPageRoute(
                            CollectionPage(title: type),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 2.5.w,
                    ),
                    _CollectionTitleWidget(
                      title: 'Mobile Phones Collection',
                      ontap: () {
                        Navigator.of(context).push(
                          buildPageRoute(
                            const CollectionPage(
                                title: 'Mobile Phones Collection'),
                          ),
                        );
                      },
                    ),
                    _CollectionListWidget(
                      collectionList: mobilePhonesCollection,
                      onItemTapped: (String type) {
                        Navigator.of(context).push(
                          buildPageRoute(
                            CollectionPage(title: type),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      drawer: const _HomeDrawer(),
    );
  }
}

class _CollectionListWidget extends StatelessWidget {
  const _CollectionListWidget({
    required this.collectionList,
    required this.onItemTapped,
  });

  final List<Collection> collectionList;
  final Function(String type) onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.w,
      margin: EdgeInsets.only(top: 2.w),
      alignment: Alignment.center,
      child: ListView.separated(
        itemCount: collectionList.length,
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final item = collectionList[index];

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () => onItemTapped(item.type),
                child: Container(
                  width: 20.w,
                  height: 20.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: primary.withOpacity(0.1),
                        offset: const Offset(1, 1),
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        item.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item.name,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 5.w,
          );
        },
      ),
    );
  }
}

class _CollectionTitleWidget extends StatelessWidget {
  const _CollectionTitleWidget({
    required this.title,
    required this.ontap,
  });
  final String title;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        TextButton.icon(
          onPressed: ontap,
          icon: const Text(
            'View all',
            style: TextStyle(color: primary),
          ),
          label: const Icon(
            FluentIcons.arrow_circle_right_48_regular,
            color: primary,
          ),
        ),
      ],
    );
  }
}

class _HomeDrawer extends StatelessWidget {
  const _HomeDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
