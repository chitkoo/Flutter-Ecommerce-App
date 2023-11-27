import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({
    super.key,
    required this.title,
    required this.productList,
  });

  final String title;
  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return _CollectionView(
      title: title,
      productList: productList,
    );
  }
}

class _CollectionView extends StatelessWidget {
  const _CollectionView({
    required this.title,
    required this.productList,
  });

  final String title;
  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {

          final product = productList[index];
          return Text(product.title ?? '');
        },
      ),
    );
  }
}
