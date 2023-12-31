import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

/// {@template rest_client}
/// REST API Client for the app
/// {@endtemplate}
class RestClient {
  /// {@macro rest_client}
  RestClient({
    required http.Client httpClient,
  }) : _httpRetryClient = RetryClient(httpClient);

  final RetryClient _httpRetryClient;

  static const _baseUrl = 'dummyjson.com';

  /// GET Method for `dummyjson.com`
  Future<http.Response> get({
    required String endPoint,
    Map<String, String> query = const <String, String>{},
  }) async {
    final uri = Uri.https(
      _baseUrl,
      endPoint,
      query,
    );

    final response = await _httpRetryClient.get(uri);

    return response;
  }
}
