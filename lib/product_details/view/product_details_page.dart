import 'package:flutter/material.dart';

import '../../models/product.dart';

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
    final isAssetImage = product.images?[0].contains('assets') ?? false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Column(
        children: [
          Hero(
            tag: product.title ?? ' hero',
            child: isAssetImage
                ? Image.asset(product.images?[0] ?? '')
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
