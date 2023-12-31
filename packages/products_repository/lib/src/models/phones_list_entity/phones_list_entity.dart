import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'phones_list_entity.freezed.dart';
part 'phones_list_entity.g.dart';

@freezed
class PhonesListEntity with _$PhonesListEntity {
  const factory PhonesListEntity({
    List<Product>? products,
    int? total,
    int? skip,
    int? limit,
  }) = _PhonesListEntity;

  factory PhonesListEntity.fromJson(Map<String, Object?> json) =>
      _$PhonesListEntityFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    int? id,
    String? title,
    String? description,
    int? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? category,
    String? thumbnail,
    List<String>? images,
  }) = _Products;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
