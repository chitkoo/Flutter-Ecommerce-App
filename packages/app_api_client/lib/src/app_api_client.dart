import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

/// {@template app_api_client}
/// REST Api Client  for the app
/// {@endtemplate}
class AppApiClient {
  /// {@macro app_api_client}
  AppApiClient({
    required http.Client httpClient,
  }) : _httpRetryClient = RetryClient(httpClient);

  final RetryClient _httpRetryClient;

  static const _baseUrl = 'dummyjson.com';

  Future<http.Response> _get({
    required String endPoint,
    Map<String, String>? query,
  }) async {
    final uri = Uri.https(
      _baseUrl,
      endPoint,
      query,
    );

    final response = await _httpRetryClient.get(uri);

    return response;
  }

  ///Rest API `Get SmartPhones`
  Future<http.Response> getSmartPhonesList() async {
    final response = await _get(endPoint: '/products/category/smartphones');

    return response;
  }
}
