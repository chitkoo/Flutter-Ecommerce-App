import 'package:app_repository/app_repository.dart';
import 'package:app_repository/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/utils/constants.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc({
    required AppRepository appRepository,
  })  : _appRepository = appRepository,
        super(const ShopState()) {
    on<GetSmartPhonesList>(_onGetSmartPhonesList);
    on<GetLaptopsList>(_onGetLaptopsList);
  }

  final AppRepository _appRepository;

  Future<void> _onGetSmartPhonesList(
    GetSmartPhonesList event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));
    try {
      final response = await _appRepository.getSmartPhonesList();

      if (response.products?.isNotEmpty ?? true) {
        emit(
          state.copyWith(
            apiStatus: ApiStatus.succeed,
            smartPhonesList: response.products,
          ),
        );
      } else {
        emit(state.copyWith(apiStatus: ApiStatus.failed));
      }
    } on PlatformException catch (e) {
      emit(state.copyWith(apiStatus: ApiStatus.failed));
      debugPrint(e.toString());
    }
  }

  Future<void> _onGetLaptopsList(
    GetLaptopsList event,
    Emitter<ShopState> emit,
  ) async {}
}
