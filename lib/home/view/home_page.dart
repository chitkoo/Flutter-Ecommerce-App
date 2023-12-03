import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app/models/models.dart';

import '../../collections/collections.dart';
import '../../common/common_methods.dart';
import '../../models/collection.dart';
import '../../search/view/search_page.dart';
import '../../shopping_bag/shopping_bag.dart';
import '../../utils/collection_list.dart';
import '../../utils/colors.dart';
import '../../utils/laptops_list.dart';
import '../../utils/mobile_phones_list.dart';
import '../../utils/super_print.dart';
import '../../utils/tv_list.dart';
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
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: primary,
        toolbarHeight: 100,
        flexibleSpace: Stack(
          children: [
            Positioned(
              top: Platform.isIOS ? 60 : 35,
              left: 20,
              right: 10,
              child: Row(
                children: [
                  const Text(
                    'Explore',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        buildPageRoute(
                          const ShoppingBagPage(),
                        ),
                      );
                    },
                    icon: const Icon(CupertinoIcons.cart),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 20,
              left: 20,
              // top: ,
              child: InkWell(
                onTap: () {},
                // onTap: () => Navigator.of(context).push(
                //   buildPageRoute(const SearchPage()),
                // ),
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
                      const Icon(CupertinoIcons.search),
                      SizedBox(
                        width: 5.w,
                      ),
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
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: ListView(
              addAutomaticKeepAlives: false,
              addRepaintBoundaries: false,
              shrinkWrap: true,
              children: [
                FlutterCarousel(
                  options: CarouselOptions(
                    initialPage: 1,
                    autoPlay: false,
                    viewportFraction: 0.9,
                    aspectRatio: 1.9,
                    showIndicator: false,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enlargeCenterPage: true,
                  ),
                  items: CategoryModel.categories.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: CachedNetworkImage(
                              imageUrl: e.image,
                              fit: BoxFit.cover,
                              width: 100.w,
                              height: 200,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Colors.black.withAlpha(50),
                              ),
                              child: Text(
                                e.name.toUpperCase(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          /**
          * Custom Search Bar
          */
          // SliverAppBar(
          //   backgroundColor: primary,
          //   flexibleSpace: FlexibleSpaceBar(
          //     titlePadding: const EdgeInsets.only(
          //       top: 0,
          //       bottom: 15,
          //       left: 20,
          //       right: 20,
          //     ),
          //     title: InkWell(
          //       onTap: () => Navigator.of(context).push(
          //         buildPageRoute(const SearchPage()),
          //       ),
          //       child: Container(
          //         height: 40,
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         child: Row(
          //           children: [
          //             const Icon(Icons.search),
          //             Text(
          //               'Search something!',
          //               style: GoogleFonts.plusJakartaSans(
          //                 color: Colors.black,
          //                 fontSize: 14,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          //   floating: true,
          // ),
          // SliverFillViewport(
          //     delegate: SliverChildBuilderDelegate((context, index) {
          //   return ListView(
          //     shrinkWrap: true,

          //   );
          // })),
          // SliverFillRemaining(
          //   child:
          // ),
          /**
           * Page Body
           */
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
        ],
      ),
      // drawer: const _HomeDrawer(),
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
