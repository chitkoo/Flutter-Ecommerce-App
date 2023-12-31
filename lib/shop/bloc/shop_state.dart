part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    @Default(ApiStatus.pure) ApiStatus apiStatus,
    @Default([]) List<Product> phonesList,
    @Default([]) List<Product> laptopsList,
  }) = _ShopState;

  factory ShopState.fromJson(Map<String, dynamic> json) =>
      _$ShopStateFromJson(json);
}
