import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_repository/products_repository.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors.dart';
import '../bloc/wishlist_bloc.dart';

class WishlistItem extends StatelessWidget {
  const WishlistItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final image = product.images?[0];
    final name = product.title;
    final price = product.price;

    return SizedBox(
      width: 90.w,
      height: 30.w,
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 30.w,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
            ),
            child: CachedNetworkImage(
              imageUrl: image ?? '',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 45.w,
            height: 30.w,
            margin: EdgeInsets.only(left: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                      child: Text(
                        '$name',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const Spacer(),
                    BlocBuilder<WishlistBloc, WishlistState>(
                      builder: (context, state) {
                        bool isInWishlist = state.wishlist.contains(product);
                        return IconButton(
                          onPressed: () {
                            context.read<WishlistBloc>().add(
                                  WishlistEvent.toggleWishlist(
                                      product: product),
                                );
                          },
                          icon: Icon(
                            isInWishlist
                                ? CupertinoIcons.heart_fill
                                : CupertinoIcons.heart,
                            color: primary,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Text(
                  '\$ $price',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: primaryDark,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(2.w),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(2.w),
                          child: const Text('Add to cart'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
