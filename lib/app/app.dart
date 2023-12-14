import 'package:app_repository/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shop/bloc/shop_bloc.dart';
import 'view/app_view.dart';

class App extends StatelessWidget {
  const App({super.key, required AppRepository appRepository})
      : _appRepository = appRepository;

  final AppRepository _appRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _appRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ShopBloc(
              appRepository: context.read<AppRepository>(),
            )..add(GetSmartPhonesList()),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}
