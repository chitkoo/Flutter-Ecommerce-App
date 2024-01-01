// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) toggleWishlist,
    required TResult Function() clearWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? toggleWishlist,
    TResult? Function()? clearWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? toggleWishlist,
    TResult Function()? clearWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleWishlist value) toggleWishlist,
    required TResult Function(_ClearWishlist value) clearWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleWishlist value)? toggleWishlist,
    TResult? Function(_ClearWishlist value)? clearWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleWishlist value)? toggleWishlist,
    TResult Function(_ClearWishlist value)? clearWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleWishlistImplCopyWith<$Res> {
  factory _$$ToggleWishlistImplCopyWith(_$ToggleWishlistImpl value,
          $Res Function(_$ToggleWishlistImpl) then) =
      __$$ToggleWishlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$ToggleWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$ToggleWishlistImpl>
    implements _$$ToggleWishlistImplCopyWith<$Res> {
  __$$ToggleWishlistImplCopyWithImpl(
      _$ToggleWishlistImpl _value, $Res Function(_$ToggleWishlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ToggleWishlistImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ToggleWishlistImpl implements _ToggleWishlist {
  const _$ToggleWishlistImpl({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'WishlistEvent.toggleWishlist(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleWishlistImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleWishlistImplCopyWith<_$ToggleWishlistImpl> get copyWith =>
      __$$ToggleWishlistImplCopyWithImpl<_$ToggleWishlistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) toggleWishlist,
    required TResult Function() clearWishlist,
  }) {
    return toggleWishlist(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? toggleWishlist,
    TResult? Function()? clearWishlist,
  }) {
    return toggleWishlist?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? toggleWishlist,
    TResult Function()? clearWishlist,
    required TResult orElse(),
  }) {
    if (toggleWishlist != null) {
      return toggleWishlist(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleWishlist value) toggleWishlist,
    required TResult Function(_ClearWishlist value) clearWishlist,
  }) {
    return toggleWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleWishlist value)? toggleWishlist,
    TResult? Function(_ClearWishlist value)? clearWishlist,
  }) {
    return toggleWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleWishlist value)? toggleWishlist,
    TResult Function(_ClearWishlist value)? clearWishlist,
    required TResult orElse(),
  }) {
    if (toggleWishlist != null) {
      return toggleWishlist(this);
    }
    return orElse();
  }
}

abstract class _ToggleWishlist implements WishlistEvent {
  const factory _ToggleWishlist({required final Product product}) =
      _$ToggleWishlistImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$ToggleWishlistImplCopyWith<_$ToggleWishlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearWishlistImplCopyWith<$Res> {
  factory _$$ClearWishlistImplCopyWith(
          _$ClearWishlistImpl value, $Res Function(_$ClearWishlistImpl) then) =
      __$$ClearWishlistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$ClearWishlistImpl>
    implements _$$ClearWishlistImplCopyWith<$Res> {
  __$$ClearWishlistImplCopyWithImpl(
      _$ClearWishlistImpl _value, $Res Function(_$ClearWishlistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearWishlistImpl implements _ClearWishlist {
  const _$ClearWishlistImpl();

  @override
  String toString() {
    return 'WishlistEvent.clearWishlist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearWishlistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Product product) toggleWishlist,
    required TResult Function() clearWishlist,
  }) {
    return clearWishlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Product product)? toggleWishlist,
    TResult? Function()? clearWishlist,
  }) {
    return clearWishlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Product product)? toggleWishlist,
    TResult Function()? clearWishlist,
    required TResult orElse(),
  }) {
    if (clearWishlist != null) {
      return clearWishlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleWishlist value) toggleWishlist,
    required TResult Function(_ClearWishlist value) clearWishlist,
  }) {
    return clearWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleWishlist value)? toggleWishlist,
    TResult? Function(_ClearWishlist value)? clearWishlist,
  }) {
    return clearWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleWishlist value)? toggleWishlist,
    TResult Function(_ClearWishlist value)? clearWishlist,
    required TResult orElse(),
  }) {
    if (clearWishlist != null) {
      return clearWishlist(this);
    }
    return orElse();
  }
}

abstract class _ClearWishlist implements WishlistEvent {
  const factory _ClearWishlist() = _$ClearWishlistImpl;
}

WishlistState _$WishlistStateFromJson(Map<String, dynamic> json) {
  return _WishlistState.fromJson(json);
}

/// @nodoc
mixin _$WishlistState {
  List<Product> get wishlist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call({List<Product> wishlist});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
  }) {
    return _then(_value.copyWith(
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistStateImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$WishlistStateImplCopyWith(
          _$WishlistStateImpl value, $Res Function(_$WishlistStateImpl) then) =
      __$$WishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> wishlist});
}

/// @nodoc
class __$$WishlistStateImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$WishlistStateImpl>
    implements _$$WishlistStateImplCopyWith<$Res> {
  __$$WishlistStateImplCopyWithImpl(
      _$WishlistStateImpl _value, $Res Function(_$WishlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
  }) {
    return _then(_$WishlistStateImpl(
      wishlist: null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistStateImpl implements _WishlistState {
  const _$WishlistStateImpl({final List<Product> wishlist = const []})
      : _wishlist = wishlist;

  factory _$WishlistStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistStateImplFromJson(json);

  final List<Product> _wishlist;
  @override
  @JsonKey()
  List<Product> get wishlist {
    if (_wishlist is EqualUnmodifiableListView) return _wishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlist);
  }

  @override
  String toString() {
    return 'WishlistState(wishlist: $wishlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistStateImpl &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_wishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      __$$WishlistStateImplCopyWithImpl<_$WishlistStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistStateImplToJson(
      this,
    );
  }
}

abstract class _WishlistState implements WishlistState {
  const factory _WishlistState({final List<Product> wishlist}) =
      _$WishlistStateImpl;

  factory _WishlistState.fromJson(Map<String, dynamic> json) =
      _$WishlistStateImpl.fromJson;

  @override
  List<Product> get wishlist;
  @override
  @JsonKey(ignore: true)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
