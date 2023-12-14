import 'dart:io';

import 'package:app_repository/models/product_entity/product.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../common/common_methods.dart';
import '../../search/search.dart';
import '../../shopping_bag/shopping_bag.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../utils/extensions.dart';
import '../bloc/shop_bloc.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: CustomScrollView(
        slivers: [
          ///`Categories Header`
          _HeaderSection(
            headerTitle: 'Trending Categories',
            onTap: () {},
          ),

          ///`Categories List`
          const _CategoriesList(categories: categories),

          ///`Smartphones Header`
          _HeaderSection(
            headerTitle: 'Popular Smartphones',
            onTap: () {},
          ),

          ///`Smartphones List`
          const _PopularSmartPhonesList(),

          ///`Laptops Header`
          _HeaderSection(
            headerTitle: 'Popular Laptops',
            onTap: () {},
          ),

          ///`Laptops List`
          // const _PopularLaptopsList(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 5.w,
            ),
          ),
        ],
      ),
    );
  }
}

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar();

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
            left: 2.5.w,
            right: 0,
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
            right: 2.5.w,
            left: 2.5.w,
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

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({
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
        margin: EdgeInsets.only(top: 5.w, bottom: 3.w),
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

class _CategoriesList extends StatelessWidget {
  const _CategoriesList({
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
              key: ValueKey(categoryItem),
              padding: EdgeInsets.symmetric(horizontal: 2.w),
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
                onTap: () {},
                child: Text(categoryItem.capitalizeString),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PopularSmartPhonesList extends StatelessWidget {
  const _PopularSmartPhonesList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        return SliverToBoxAdapter(
          child: SizedBox(
            height: 55.w,
            child: ListView.builder(
              addAutomaticKeepAlives: false,
              addRepaintBoundaries: false,
              scrollDirection: Axis.horizontal,
              itemCount: state.smartPhonesList.length,
              itemBuilder: (BuildContext context, int index) {
                final product = state.smartPhonesList[index];

                return ProductCard(
                  product: product,
                );
              },
            ),
          ),
        );
      },
    );
  }
}

// class _PopularLaptopsList extends StatelessWidget {
//   const _PopularLaptopsList();

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: SizedBox(
//         height: 55.w,
//         child: ListView.builder(
//           addAutomaticKeepAlives: false,
//           addRepaintBoundaries: false,
//           scrollDirection: Axis.horizontal,
//           itemCount: 5,
//           itemBuilder: (BuildContext context, int index) {
//             return const ProductCard();
//           },
//         ),
//       ),
//     );
//   }
// }

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final productName = product.title;
    final thumbnail = product.thumbnail;
    final originalPrice = product.price;
    final discountPercentage = product.discountPercentage;
    final discountPrice = product.discountPrice?.toStringAsFixed(2);

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
              imageUrl: thumbnail ?? '',
            ),
          ),
          Positioned(
            bottom: 14.w,
            left: 2.w,
            child: SizedBox(
              width: 45.w,
              child: Text(
                '$productName',
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
              child: Text.rich(
                TextSpan(
                  text: '\$ $originalPrice ',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: favouriteColor,
                      ),
                  children: [
                    TextSpan(
                      text: '($discountPercentage % OFF)',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: favouriteColor,
                            decoration: TextDecoration.none,
                          ),
                    ),
                  ],
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
                '\$ $discountPrice',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
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
