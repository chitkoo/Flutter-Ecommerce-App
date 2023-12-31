import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../utils/enums.dart';
import '../bloc/shop_bloc.dart';
import 'widgets.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopBloc, ShopState>(
      builder: (context, state) {
        switch (state.apiStatus) {
          case ApiStatus.loading:
            return const CupertinoActivityIndicator();
          case ApiStatus.failed:
            return const Text('Failed to load');
          case ApiStatus.succeed:
            return SizedBox(
              height: 53.w,
              child: ListView.builder(
                addAutomaticKeepAlives: false,
                addRepaintBoundaries: false,
                scrollDirection: Axis.horizontal,
                itemCount: state.laptopsList.length,
                itemBuilder: (BuildContext context, int index) {
                  final product = state.laptopsList[index];

                  return ProductCard(
                    product: product,
                  );
                },
              ),
            );
          case ApiStatus.pure:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
