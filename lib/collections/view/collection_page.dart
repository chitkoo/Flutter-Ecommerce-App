import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../common/common_methods.dart';
import '../../models/product.dart';
import '../../product_details/product_details.dart';

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
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 2.5.w, horizontal: 2.w),
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 60.w,
          mainAxisSpacing: 8.w,
          crossAxisSpacing: 2.5.w,
        ),
        itemBuilder: (BuildContext context, int index) {
          final productItem = productList[index];
          final isAssetImage =
              productItem.images?[0].contains('assets') ?? false;

          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                buildPageRoute(
                  ProductDetailsPage(
                    product: productItem,
                  ),
                ),
              );
            },
            child: Column(
              children: [
                Hero(
                  tag: productItem.title ?? 'hero',
                  child: isAssetImage
                      ? Image.asset(
                          productItem.images?[0] ?? '',
                          width: 50.w,
                          height: 45.w,
                          fit: BoxFit.cover,
                        )
                      : const SizedBox.shrink(),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 10.w,
                        alignment: Alignment.center,
                        child: Text(
                          productItem.title ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(FluentIcons.heart_48_regular),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
