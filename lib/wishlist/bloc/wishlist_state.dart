part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState({
   @Default([]) List<Product> wishlist,
  }) = _WishlistState;

  factory WishlistState.fromJson(Map<String, dynamic> json) =>
      _$WishlistStateFromJson(json);
}
