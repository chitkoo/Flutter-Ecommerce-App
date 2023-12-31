import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'widgets.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 53.w,
      child: ListView.builder(
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const ProductCard();
        },
      ),
    );
  }
}
