import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app/utils/extensions.dart';

import '../../common/common_methods.dart';
import '../../search/search.dart';
import '../../shopping_bag/shopping_bag.dart';
import '../../utils/colors.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    const categories = [
      "smartphones",
      "laptops",
      "fragrances",
      "skincare",
      "groceries",
      "home-decoration",
      "furniture",
      "tops",
      "womens-dresses",
      "womens-shoes",
      "mens-shirts",
      "mens-shoes",
      "mens-watches",
      "womens-watches",
      "womens-bags",
      "womens-jewellery",
      "sunglasses",
      "automotive",
      "motorcycle",
      "lighting"
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      ///`Custom App Bar`
      appBar: const HomeAppBar(),
      body: CustomScrollView(
        slivers: [
          const CustomMargin(),

          ///`Categories Header`
          HeaderSection(
            headerTitle: 'Trending Categories',
            onTap: () {},
          ),
          const CustomMargin(),

          ///`Categories List`
          const CategoriesList(categories: categories),
          const CustomMargin(),

          ///`Smartphones Header`
          HeaderSection(
            headerTitle: 'Popular Smartphones',
            onTap: () {},
          ),
          const CustomMargin(),

          ///`Smartphones List`
          const SmartphonesList(),
          const CustomMargin(),

          ///`Laptops Header`
          HeaderSection(
            headerTitle: 'Popular Laptops',
            onTap: () {},
          ),
          const CustomMargin(),

          ///`Laptops List`
          const SmartphonesList(),
          const CustomMargin(),
        ],
      ),
    );
  }
}

class SmartphonesList extends StatelessWidget {
  const SmartphonesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 55.w,
        child: ListView.builder(
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return const ProductCard();
          },
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: primary,
      toolbarHeight: 120,
      flexibleSpace: Stack(
        children: [
          Positioned(
            top: Platform.isIOS ? 60 : 35,
            left: 20,
            right: 10,
            child: Row(
              children: [
                Text(
                  'What are you looking for today?',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
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
            bottom: 15,
            right: 20,
            left: 20,
            child: InkWell(
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
                    const Icon(CupertinoIcons.search),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Search something!',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: primaryTextColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 55.w,
      margin: EdgeInsets.symmetric(horizontal: 2.5.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.w),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1))]),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 20.w,
            child: CachedNetworkImage(
              imageUrl: 'https://i.dummyjson.com/data/products/1/1.jpg',
            ),
          ),
          Positioned(
            bottom: 14.w,
            left: 2.w,
            child: SizedBox(
              width: 45.w,
              child: Text(
                'iPhone 9',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          Positioned(
            bottom: 8.w,
            left: 2.w,
            child: SizedBox(
              width: 45.w,
              child: Text(
                '\$ 549',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
              ),
            ),
          ),
          Positioned(
            bottom: 2.w,
            left: 2.w,
            child: SizedBox(
              width: 45.w,
              child: Text(
                '\$ 549',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.cart_badge_plus,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart,
                color: favouriteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMargin extends StatelessWidget {
  const CustomMargin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(padding: EdgeInsets.only(bottom: 5.w));
  }
}

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
    required this.categories,
  });

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 10.w,
        child: ListView.builder(
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            final categoryItem = categories[index];

            return Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              height: 10.w,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 2.5.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2.w),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.1)),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                  onTap: () {}, child: Text(categoryItem.capitalizeString)),
            );
          },
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.headerTitle,
    required this.onTap,
  });

  final String headerTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.5.w),
        width: 100.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              headerTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'See all',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
