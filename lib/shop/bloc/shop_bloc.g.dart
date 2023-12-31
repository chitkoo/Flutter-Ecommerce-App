// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopStateImpl _$$ShopStateImplFromJson(Map<String, dynamic> json) =>
    _$ShopStateImpl(
      apiStatus: $enumDecodeNullable(_$ApiStatusEnumMap, json['apiStatus']) ??
          ApiStatus.pure,
      phonesList: (json['phonesList'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ShopStateImplToJson(_$ShopStateImpl instance) =>
    <String, dynamic>{
      'apiStatus': _$ApiStatusEnumMap[instance.apiStatus]!,
      'phonesList': instance.phonesList,
    };

const _$ApiStatusEnumMap = {
  ApiStatus.pure: 'pure',
  ApiStatus.loading: 'loading',
  ApiStatus.succeed: 'succeed',
  ApiStatus.failed: 'failed',
};
