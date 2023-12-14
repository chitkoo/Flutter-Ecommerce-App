part of 'shop_bloc.dart';

class ShopState extends Equatable {
  const ShopState({
    this.smartPhonesList = const [],
    this.apiStatus = ApiStatus.initial,
  });

  final List<Product> smartPhonesList;
  final ApiStatus apiStatus;

  @override
  List<Object> get props => [smartPhonesList, apiStatus];

  ShopState copyWith({
    List<Product>? smartPhonesList,
    ApiStatus? apiStatus,
  }) {
    return ShopState(
      smartPhonesList: smartPhonesList ?? this.smartPhonesList,
      apiStatus: apiStatus ?? this.apiStatus,
    );
  }
}
