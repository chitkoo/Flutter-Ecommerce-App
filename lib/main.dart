import 'package:app_repository/app_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'shopping_app_bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = ShoppingAppBlocObserver();

  final appRepository = AppRepository();

  runApp(App(
    appRepository: appRepository,
  ));
}
