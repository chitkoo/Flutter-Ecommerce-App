import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/colors.dart';
import '../bloc/wishlist_bloc.dart';
import '../widgets/widgets.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const WishlistAppbar(),
          BlocBuilder<WishlistBloc, WishlistState>(
            builder: (context, state) {
              return SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.5.w),
                sliver: SliverList.separated(
                  itemCount: state.wishlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    final wishlistProduct = state.wishlist[index];
                    return  WishlistItem(product: wishlistProduct,);
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
              );
            },
          ),
        ],
      ),
    );
  }
}
