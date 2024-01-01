import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../common/shimmer_card.dart';
import '../../utils/enums.dart';
import '../bloc/shop_bloc.dart';
import 'widgets.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        if (state.apiStatus == ApiStatus.failed) {
          return const Text('Unable to receive data');
        }

        return SizedBox(
          height: 53.w,
          child: ListView.builder(
            addAutomaticKeepAlives: false,
            addRepaintBoundaries: false,
            scrollDirection: Axis.horizontal,
            itemCount: state.apiStatus == ApiStatus.loading
                ? 2
                : state.laptopsList.length,
            itemBuilder: (BuildContext context, int index) {
              if (state.apiStatus == ApiStatus.loading) {
                return const ShimmerCard();
              } else {
                final product = state.laptopsList[index];

                return ProductCard(
                  key: ValueKey(product.id),
                  product: product,
                );
              }
            },
          ),
        );
      },
    );
  }
}
