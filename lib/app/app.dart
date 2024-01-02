import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_repository/products_repository.dart';
import 'package:shopping_app/wishlist/bloc/wishlist_bloc.dart';

import '../shop/bloc/shop_bloc.dart';
import 'view/app_view.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required ProductsRepository productsRepository,
  }) : _productsRepository = productsRepository;

  final ProductsRepository _productsRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: _productsRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                ShopBloc(productsRepository: _productsRepository)
                  ..add(const ShopEvent.fetchPhonesList())
                  ..add(const ShopEvent.fetchLaptopsList()),
          ),
          BlocProvider(
            create: (context) => WishlistBloc(),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}
