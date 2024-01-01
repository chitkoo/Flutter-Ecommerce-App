import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors.dart';
import '../widgets/widgets.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const WishlistAppbar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.5.w),
            sliver: SliverList.separated(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const WishlistItem();
              },
              separatorBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 2.5.w),
                  child: const Divider(
                    color: primaryDark,
                    thickness: 0.1,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
