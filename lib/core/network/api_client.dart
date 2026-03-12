import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../error/server_exception.dart';

class ApiClient {
  final String baseUrl;
  final http.Client httpClient;
  final SharedPreferences sharedPreferences;

  ApiClient({
    required this.baseUrl,
    required this.httpClient,
    required this.sharedPreferences,
  });

  String? get _token => sharedPreferences.getString('auth_token');

  Map<String, String> get _headers => {
        'Content-Type': 'application/json',
        if (_token != null) 'Authorization': 'Bearer $_token',
      };

  Future<Map<String, dynamic>> get(String path,
      {Map<String, String>? queryParams}) async {
    final uri =
        Uri.parse('$baseUrl$path').replace(queryParameters: queryParams);
    final response = await httpClient.get(uri, headers: _headers);
    return _handleResponse(response);
  }

  Future<List<dynamic>> getList(String path,
      {Map<String, String>? queryParams}) async {
    final uri =
        Uri.parse('$baseUrl$path').replace(queryParameters: queryParams);
    final response = await httpClient.get(uri, headers: _headers);
    return _handleListResponse(response);
  }

  Future<Map<String, dynamic>> post(String path,
      {Map<String, dynamic>? body}) async {
    final uri = Uri.parse('$baseUrl$path');
    final response =
        await httpClient.post(uri, headers: _headers, body: jsonEncode(body));
    return _handleResponse(response);
  }

  Future<Map<String, dynamic>> put(String path,
      {Map<String, dynamic>? body}) async {
    final uri = Uri.parse('$baseUrl$path');
    final response =
        await httpClient.put(uri, headers: _headers, body: jsonEncode(body));
    return _handleResponse(response);
  }

  Future<void> delete(String path) async {
    final uri = Uri.parse('$baseUrl$path');
    final response = await httpClient.delete(uri, headers: _headers);
    if (response.statusCode >= 400) {
      throw ServerException(_parseError(response));
    }
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
    throw ServerException(_parseError(response));
  }

  List<dynamic> _handleListResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body) as List<dynamic>;
    }
    throw ServerException(_parseError(response));
  }

  String _parseError(http.Response response) {
    try {
      final body = jsonDecode(response.body);
      return body['detail'] ?? 'Request failed with status ${response.statusCode}';
    } catch (_) {
      return 'Request failed with status ${response.statusCode}';
    }
  }
}
