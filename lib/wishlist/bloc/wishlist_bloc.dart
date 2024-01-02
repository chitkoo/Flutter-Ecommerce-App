import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_repository/products_repository.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_bloc.freezed.dart';
part 'wishlist_bloc.g.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(const WishlistState()) {
    on<_ToggleWishlist>(_onToggleWishlist);
  }

  List<Product> get wishlist => state.wishlist;

  void _onToggleWishlist(_ToggleWishlist event, Emitter<WishlistState> emit) {
    List<Product> copyList = List.of(wishlist);

    int currentIndex =
        copyList.indexWhere((element) => element.id == event.product.id);

    bool isInWishlist = copyList.contains(event.product);

    if (isInWishlist && currentIndex != -1) {
      copyList.removeAt(currentIndex);
    } else {
      copyList.add(event.product);
    }

    emit(state.copyWith(wishlist: copyList));
  }
}
