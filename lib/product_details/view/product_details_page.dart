import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

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

      return ClipRect(
        child: isAssetImage
            ? Image.asset(
              e,
              width: double.infinity,
              fit: BoxFit.contain,
            )
            : const SizedBox.shrink(),
      );
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: kToolbarHeight,
            pinned: true,
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
                  padding: EdgeInsets.zero,
                  children: [
                    FlutterCarousel(
                      options: CarouselOptions(
                        autoPlay: false,
                        viewportFraction: 0.8,
                        enlargeCenterPage: true,
                        slideIndicator: CircularWaveSlideIndicator(
                          currentIndicatorColor: primary,
                          indicatorBackgroundColor: Colors.grey.shade300,
                        ),
                        floatingIndicator: true,
                      ),
                      items: sliders,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
