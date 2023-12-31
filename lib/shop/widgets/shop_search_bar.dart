import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_app/utils/colors.dart';

class ShopSearchBar extends StatelessWidget {
  const ShopSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 10.w,
      decoration: BoxDecoration(
        border: const Border.fromBorderSide(
          BorderSide(
            color: secondaryDark,
            width: 0.5,
          ),
        ),
        borderRadius: BorderRadius.circular(2.w),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.5.w),
            child: Row(
              children: [
                const Icon(CupertinoIcons.search),
                SizedBox(
                  width: 2.5.w,
                ),
                Text(
                  'Search products',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
