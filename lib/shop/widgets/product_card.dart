import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products_repository/products_repository.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final image = product.images?[0];
    final name = product.title;
    final price = product.price;

    return InkWell(
      borderRadius: BorderRadius.circular(2.w),
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.5.w),
        width: 45.w,
        height: 52.w,
        child: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 45.w,
                height: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(image ?? ''),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.topRight,
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: primary,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 30.w,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$name',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '\$ $price',
                          textAlign: TextAlign.left,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: primaryDark,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.cart_badge_plus,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
