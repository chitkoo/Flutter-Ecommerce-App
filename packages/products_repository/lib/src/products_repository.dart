import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:products_repository/products_repository.dart';
import 'package:rest_client/rest_client.dart';

/// {@template products_repository}
/// Domain and use cases for the app
/// {@endtemplate}
class ProductsRepository {
  /// {@macro products_repository}
  ProductsRepository({RestClient? restClient})
      : _restClient = restClient ?? RestClient(httpClient: http.Client());

  final RestClient _restClient;

  ///Get Smartphones List `/smartphones`
  Future<PhonesListEntity> getSmartPhonesList() async {
    final response =
        await _restClient.get(endPoint: '/products/category/smartphones');

    final responseBody = jsonDecode(response.body) as Map<String, dynamic>;

    return compute(PhonesListEntity.fromJson, responseBody);
  }

  ///Get Smartphones List `/laptops`
  Future<PhonesListEntity> getLaptopsList() async {
    final response =
        await _restClient.get(endPoint: '/products/category/laptops');

    final responseBody = jsonDecode(response.body) as Map<String, dynamic>;

    return compute(PhonesListEntity.fromJson, responseBody);
  }
}
