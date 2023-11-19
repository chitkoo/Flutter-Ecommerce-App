import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class ShoppingAppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('onEvent(${bloc.runtimeType}, $event)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('onError(${bloc.runtimeType}, $error)');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint('onTransition(${bloc.runtimeType}, $transition)');
  }
}
