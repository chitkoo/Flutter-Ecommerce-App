part of 'shop_bloc.dart';

sealed class ShopEvent extends Equatable {
  const ShopEvent();

  @override
  List<Object> get props => [];
}

class GetSmartPhonesList extends ShopEvent {}

class GetLaptopsList extends ShopEvent {}
