part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.fetchPhonesList() = _FetchPhonesList;
}