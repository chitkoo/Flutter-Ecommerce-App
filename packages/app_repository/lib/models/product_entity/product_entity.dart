import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'product.dart';

class ProductEntity extends Equatable {
  final List<Product>? products;
  final int? total;
  final int? skip;
  final int? limit;

  const ProductEntity({this.products, this.total, this.skip, this.limit});

  factory ProductEntity.fromMap(Map<String, dynamic> data) => ProductEntity(
        products: (data['products'] as List<dynamic>?)
            ?.map((e) => Product.fromMap(e as Map<String, dynamic>))
            .toList(),
        total: data['total'] as int?,
        skip: data['skip'] as int?,
        limit: data['limit'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'products': products?.map((e) => e.toMap()).toList(),
        'total': total,
        'skip': skip,
        'limit': limit,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProductEntity].
  factory ProductEntity.fromJson(String data) {
    return ProductEntity.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ProductEntity] to a JSON string.
  String toJson() => json.encode(toMap());

  ProductEntity copyWith({
    List<Product>? products,
    int? total,
    int? skip,
    int? limit,
  }) {
    return ProductEntity(
      products: products ?? this.products,
      total: total ?? this.total,
      skip: skip ?? this.skip,
      limit: limit ?? this.limit,
    );
  }

  @override
  List<Object?> get props => [products, total, skip, limit];
}
