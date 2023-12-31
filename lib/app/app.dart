import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_repository/products_repository.dart';

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
      child: BlocProvider(
        create: (context) => ShopBloc(productsRepository: _productsRepository)
          ..add(const ShopEvent.fetchPhonesList())
          ..add(const ShopEvent.fetchLaptopsList()),
        child: const AppView(),
      ),
    );
  }
}
