import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../common/common_methods.dart';
import '../../models/category_model.dart';
import '../../shopping_bag/shopping_bag.dart';
import '../../utils/colors.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

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
      body: ListView(
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
    );
  }
}