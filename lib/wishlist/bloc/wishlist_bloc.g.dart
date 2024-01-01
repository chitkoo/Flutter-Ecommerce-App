// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistStateImpl _$$WishlistStateImplFromJson(Map<String, dynamic> json) =>
    _$WishlistStateImpl(
      wishlist: (json['wishlist'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WishlistStateImplToJson(_$WishlistStateImpl instance) =>
    <String, dynamic>{
      'wishlist': instance.wishlist,
    };
