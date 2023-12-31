// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPhonesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPhonesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPhonesList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPhonesList value) fetchPhonesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPhonesList value)? fetchPhonesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPhonesList value)? fetchPhonesList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEventCopyWith<$Res> {
  factory $ShopEventCopyWith(ShopEvent value, $Res Function(ShopEvent) then) =
      _$ShopEventCopyWithImpl<$Res, ShopEvent>;
}

/// @nodoc
class _$ShopEventCopyWithImpl<$Res, $Val extends ShopEvent>
    implements $ShopEventCopyWith<$Res> {
  _$ShopEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchPhonesListImplCopyWith<$Res> {
  factory _$$FetchPhonesListImplCopyWith(_$FetchPhonesListImpl value,
          $Res Function(_$FetchPhonesListImpl) then) =
      __$$FetchPhonesListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPhonesListImplCopyWithImpl<$Res>
    extends _$ShopEventCopyWithImpl<$Res, _$FetchPhonesListImpl>
    implements _$$FetchPhonesListImplCopyWith<$Res> {
  __$$FetchPhonesListImplCopyWithImpl(
      _$FetchPhonesListImpl _value, $Res Function(_$FetchPhonesListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPhonesListImpl implements _FetchPhonesList {
  const _$FetchPhonesListImpl();

  @override
  String toString() {
    return 'ShopEvent.fetchPhonesList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPhonesListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPhonesList,
  }) {
    return fetchPhonesList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPhonesList,
  }) {
    return fetchPhonesList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPhonesList,
    required TResult orElse(),
  }) {
    if (fetchPhonesList != null) {
      return fetchPhonesList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPhonesList value) fetchPhonesList,
  }) {
    return fetchPhonesList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPhonesList value)? fetchPhonesList,
  }) {
    return fetchPhonesList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPhonesList value)? fetchPhonesList,
    required TResult orElse(),
  }) {
    if (fetchPhonesList != null) {
      return fetchPhonesList(this);
    }
    return orElse();
  }
}

abstract class _FetchPhonesList implements ShopEvent {
  const factory _FetchPhonesList() = _$FetchPhonesListImpl;
}

ShopState _$ShopStateFromJson(Map<String, dynamic> json) {
  return _ShopState.fromJson(json);
}

/// @nodoc
mixin _$ShopState {
  ApiStatus get apiStatus => throw _privateConstructorUsedError;
  List<Product> get phonesList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call({ApiStatus apiStatus, List<Product> phonesList});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? phonesList = null,
  }) {
    return _then(_value.copyWith(
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      phonesList: null == phonesList
          ? _value.phonesList
          : phonesList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopStateImplCopyWith<$Res>
    implements $ShopStateCopyWith<$Res> {
  factory _$$ShopStateImplCopyWith(
          _$ShopStateImpl value, $Res Function(_$ShopStateImpl) then) =
      __$$ShopStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus apiStatus, List<Product> phonesList});
}

/// @nodoc
class __$$ShopStateImplCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$ShopStateImpl>
    implements _$$ShopStateImplCopyWith<$Res> {
  __$$ShopStateImplCopyWithImpl(
      _$ShopStateImpl _value, $Res Function(_$ShopStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? phonesList = null,
  }) {
    return _then(_$ShopStateImpl(
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      phonesList: null == phonesList
          ? _value._phonesList
          : phonesList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopStateImpl implements _ShopState {
  const _$ShopStateImpl(
      {this.apiStatus = ApiStatus.pure,
      final List<Product> phonesList = const []})
      : _phonesList = phonesList;

  factory _$ShopStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopStateImplFromJson(json);

  @override
  @JsonKey()
  final ApiStatus apiStatus;
  final List<Product> _phonesList;
  @override
  @JsonKey()
  List<Product> get phonesList {
    if (_phonesList is EqualUnmodifiableListView) return _phonesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phonesList);
  }

  @override
  String toString() {
    return 'ShopState(apiStatus: $apiStatus, phonesList: $phonesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopStateImpl &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            const DeepCollectionEquality()
                .equals(other._phonesList, _phonesList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, apiStatus, const DeepCollectionEquality().hash(_phonesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      __$$ShopStateImplCopyWithImpl<_$ShopStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopStateImplToJson(
      this,
    );
  }
}

abstract class _ShopState implements ShopState {
  const factory _ShopState(
      {final ApiStatus apiStatus,
      final List<Product> phonesList}) = _$ShopStateImpl;

  factory _ShopState.fromJson(Map<String, dynamic> json) =
      _$ShopStateImpl.fromJson;

  @override
  ApiStatus get apiStatus;
  @override
  List<Product> get phonesList;
  @override
  @JsonKey(ignore: true)
  _$$ShopStateImplCopyWith<_$ShopStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
