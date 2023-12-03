import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../models/models.dart';
import '../../search/view/search_page.dart';
import '../../shop/shop.dart';
import '../../shopping_bag/shopping_bag.dart';
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
    final selectedTab =
        context.select((HomeCubit cubit) => cubit.state.tabIndex);

    return Scaffold(
      body: IndexedStack(
        index: selectedTab,
        children: const [
          ShopPage(),
          ShoppingBagPage(),
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

// SliverFillViewport(
//   delegate: SliverChildBuilderDelegate(
//     (context, index) {
//       return ListView(
//         shrinkWrap: true,
//         padding: EdgeInsets.all(2.5.w),
//         children: [
//           /**
//            * Promotion Banner
//            */
//           ClipRRect(
//             borderRadius: BorderRadius.circular(5),
//             child: Image.asset(
//               'assets/images/drawer_header.jpg',
//               width: double.infinity,
//               height: 50.w,
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(
//             height: 2.5.w,
//           ),
//           /**
//            * Laptops Collection
//            */
//           _CollectionTitleWidget(
//             title: 'Notebooks Collection',
//             ontap: () {
//               Navigator.of(context).push(
//                 buildPageRoute(
//                   CollectionPage(
//                     title: 'Notebooks Collection',
//                     productList: laptopList,
//                   ),
//                 ),
//               );
//             },
//           ),
//           _CollectionListWidget(
//             collectionList: laptopsCollection,
//             onItemTapped: (String type) {
//               superPrint(type);

//               final selectedLaptopList = laptopList
//                   .where((laptop) => laptop.brand == type)
//                   .toList();

//               Navigator.of(context).push(
//                 buildPageRoute(
//                   CollectionPage(
//                     title: type,
//                     productList: selectedLaptopList,
//                   ),
//                 ),
//               );
//             },
//           ),
//           SizedBox(
//             height: 2.5.w,
//           ),
//           /**
//            * Mobile Phones Collection
//            */
//           _CollectionTitleWidget(
//             title: 'Mobile Phones Collection',
//             ontap: () {
//               Navigator.of(context).push(
//                 buildPageRoute(
//                   CollectionPage(
//                     title: 'Mobile Phones Collection',
//                     productList: mobilePhonesList,
//                   ),
//                 ),
//               );
//             },
//           ),
//           _CollectionListWidget(
//             collectionList: mobilePhonesCollection,
//             onItemTapped: (String type) {
//               superPrint(type);

//               final selectedPhonesList = mobilePhonesList
//                   .where((phone) => phone.brand == type)
//                   .toList();

//               Navigator.of(context).push(
//                 buildPageRoute(
//                   CollectionPage(
//                     title: type,
//                     productList: selectedPhonesList,
//                   ),
//                 ),
//               );
//             },
//           ),
//           SizedBox(
//             height: 2.5.w,
//           ),
//           /**
//            * TV Collection
//            */
//           _CollectionTitleWidget(
//             title: 'TV Collection',
//             ontap: () {
//               Navigator.of(context).push(
//                 buildPageRoute(
//                   CollectionPage(
//                     title: 'TV Collection',
//                     productList: tvList,
//                   ),
//                 ),
//               );
//             },
//           ),
//           _CollectionListWidget(
//             collectionList: tvCollection,
//             onItemTapped: (String type) {
//               superPrint(type);

//               final selectedTvList =
//                   tvList.where((tv) => tv.brand == type).toList();

//               Navigator.of(context).push(
//                 buildPageRoute(
//                   CollectionPage(
//                     title: type,
//                     productList: selectedTvList,
//                   ),
//                 ),
//               );
//             },
//           ),
//           SizedBox(
//             height: 18.w,
//           )
//         ],
//       );
//     },
//   ),
// ),
//   ],
// ),
// drawer: const _HomeDrawer(),

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
                onTap: () => onItemTapped(item.brand),
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
          label: Icon(
            CupertinoIcons.right_chevron,
            color: primary,
            size: 5.w,
          ),
        ),
      ],
    );
  }
}
