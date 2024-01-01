import 'package:flutter/material.dart';
import 'package:products_repository/products_repository.dart';

import 'app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Bloc.observer = ShoppingAppBlocObserver();

  final productRepo = ProductsRepository();

  runApp(
    App(
      productsRepository: productRepo,
    ),
  );
}
