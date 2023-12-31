import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:products_repository/products_repository.dart';

import 'app/app.dart';
import 'shopping_app_bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = ShoppingAppBlocObserver();

  final productRepo = ProductsRepository();

  runApp(
    App(
      productsRepository: productRepo,
    ),
  );
}
