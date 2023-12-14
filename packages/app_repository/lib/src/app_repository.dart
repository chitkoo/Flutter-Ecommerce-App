import 'package:app_api_client/app_api_client.dart';
import 'package:app_repository/models/product_entity/product_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

/// {@template app_repository}
/// REST Api Usecases for the app
/// {@endtemplate}
class AppRepository {
  /// {@macro app_repository}
  AppRepository({
    AppApiClient? appApiClient,
  }) : _appApiClient = appApiClient ?? AppApiClient(httpClient: http.Client());

  final AppApiClient _appApiClient;

  Future<ProductEntity> getSmartPhonesList() async {
    final response = await _appApiClient.getSmartPhonesList();

    return compute(ProductEntity.fromJson, response.body);
  }
}
