import 'package:bloc/bloc.dart';

import 'utils/super_print.dart';

class ShoppingAppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    superPrint(error, title: 'onError(${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    superPrint(change, title: 'onChange(${bloc.runtimeType}');
  }
}
