import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.headerTitle,
    required this.onTap,
  });

  final String headerTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
      margin: EdgeInsets.only(bottom: 3.w),
      width: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headerTitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'See all',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
