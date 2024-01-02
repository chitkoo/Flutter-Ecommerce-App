
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors.dart';

class EmptyWishlistWidget extends StatelessWidget {
  const EmptyWishlistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
      sliver: SliverToBoxAdapter(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/animations/empty_wishlist.json',
              width: 50.w,
              height: 50.w,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15.w,
            ),
            Text(
              'Wishlist is empty',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: primaryDark,
                  ),
            ),
            Text(
              'You don\'t have any products in the wishlist yet',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: secondaryDark,
                  ),
            ),
            Text(
              'You will find a lot of interesting products on our "Shop" page',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: secondaryDark,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
