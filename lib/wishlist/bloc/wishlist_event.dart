part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.toggleWishlist({required Product product}) = _ToggleWishlist;
  const factory WishlistEvent.clearWishlist() = _ClearWishlist;
}
