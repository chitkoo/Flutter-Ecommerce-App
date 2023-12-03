import 'package:bloc/bloc.dart';

import 'utils/super_print.dart';

class ShoppingAppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    superPrint(event, title: 'onEvent(${bloc.runtimeType}');
  }

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

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    superPrint(transition, title: 'onTransition(${bloc.runtimeType}');
  }
}
