import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:like_button/like_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../models/product.dart';
import '../../utils/colors.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return _ProductDetailsView(
      product: product,
    );
  }
}

class _ProductDetailsView extends StatelessWidget {
  const _ProductDetailsView({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final sliders = product.images?.map((e) {
      final isAssetImage = e.contains('assets');

      return isAssetImage
          ? Image.asset(
              e,
              width: double.infinity,
              fit: BoxFit.contain,
            )
          : const SizedBox.shrink();
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(FluentIcons.cart_24_regular),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          /**
           * Carousel
           */
          Stack(
            children: [
              FlutterCarousel(
                options: CarouselOptions(
                  height: 300,
                  autoPlay: false,
                  viewportFraction: 1,
                  indicatorMargin: 0,
                  slideIndicator: CircularWaveSlideIndicator(
                    currentIndicatorColor: primary,
                    indicatorBackgroundColor: Colors.grey.shade300,
                    indicatorRadius: 4,
                    itemSpacing: 12,
                  ),
                  floatingIndicator: true,
                ),
                items: sliders,
              ),
              Positioned(
                right: 35,
                bottom: 0,
                child: LikeButton(
                  padding: EdgeInsets.zero,
                  // onTap: (bool isLike) async {
                  //   return null;
                  // },
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  size: 30,
                  circleColor: const CircleColor(
                      start: Color(0xffE81031), end: Color(0xffE81031)),
                  bubblesColor: const BubblesColor(
                    dotPrimaryColor: Color(0xffB70011),
                    dotSecondaryColor: Color(0xffE81031),
                  ),
                  likeBuilder: (bool isLiked) {
                    return Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: primary.withOpacity(0.2),
                              offset: const Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Icon(
                        isLiked
                            ? FluentIcons.heart_48_filled
                            : FluentIcons.heart_48_regular,
                        color: isLiked ? Colors.redAccent : Colors.grey,
                        size: 20,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${product.title}'.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text.rich(
                  TextSpan(
                    text: '\$ ',
                    children: [
                      TextSpan(
                          text: '${product.price}',
                          style: const TextStyle(color: Colors.black54)),
                    ],
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
                Text(
                  'Product Description'.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('${product.description}'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price : \$ ${product.price}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Add to Cart'))),
          ],
        ),
      ),
    );
  }
}
