import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_repository/products_repository.dart';
import 'package:shopping_app/utils/super_print.dart';

import '../../utils/enums.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';
part 'shop_bloc.g.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc({
    required ProductsRepository productsRepository,
  })  : _productsRepository = productsRepository,
        super(const ShopState()) {
    on<_FetchPhonesList>(_onFetchPhonesList);
    on<_FetchLaptopsList>(_onFetchLaptopsList);
  }

  final ProductsRepository _productsRepository;

  Future<void> _onFetchPhonesList(
    _FetchPhonesList event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));
    try {
      final response = await _productsRepository.getSmartPhonesList();

      superPrint('BLOC _____ ${response.products}');

      if (response.products != []) {
        emit(
          state.copyWith(
            apiStatus: ApiStatus.succeed,
            phonesList: response.products ?? [],
          ),
        );
      }
    } catch (e) {
      superPrint(e);
      emit(state.copyWith(apiStatus: ApiStatus.failed));
    }
  }

  Future<void> _onFetchLaptopsList(
    _FetchLaptopsList event,
    Emitter<ShopState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));
    try {
      final response = await _productsRepository.getLaptopsList();

      superPrint('BLOC _____ ${response.products}');

      if (response.products != []) {
        emit(
          state.copyWith(
            apiStatus: ApiStatus.succeed,
            laptopsList: response.products ?? [],
          ),
        );
      }
    } catch (e) {
      superPrint(e);
      emit(state.copyWith(apiStatus: ApiStatus.failed));
    }
  }
}
