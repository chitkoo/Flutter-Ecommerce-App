import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
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
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: kToolbarHeight,
            // pinned: true,
            backgroundColor: Colors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
            ),
          ),
          SliverFillViewport(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListView(
                  padding: EdgeInsets.fromLTRB(2.5.w, 0, 2.5.w, 2.5.w),
                  children: [
                    /**
                     * Carousel
                     */
                    FlutterCarousel(
                      options: CarouselOptions(
                        height: 300,
                        autoPlay: false,
                        viewportFraction: 1,
                        slideIndicator: CircularWaveSlideIndicator(
                          currentIndicatorColor: primary,
                          indicatorBackgroundColor: Colors.grey.shade300,
                        ),
                        floatingIndicator: true,
                      ),
                      items: sliders,
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    Text(
                      '${product.title}',
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
                    SizedBox(
                      height: 3.w,
                    ),
                    const Text(
                      'Product Description',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('${product.description}'),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        height: 60,
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$ ${product.price}'),
            ElevatedButton(onPressed: () {}, child: const Text('Add to cart')),
          ],
        ),
      ),
    );
  }
}
