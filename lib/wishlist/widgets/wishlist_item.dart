import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors.dart';

class WishlistItem extends StatelessWidget {
  const WishlistItem({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Image.asset(
              'assets/images/smaple.jpeg',
              fit: BoxFit.fill,
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
                        'Microsoft Surface Laptop 4',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(CupertinoIcons.heart),
                    ),
                  ],
                ),
                Text(
                  '\$ 9000',
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
