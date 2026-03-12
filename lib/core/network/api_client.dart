import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import '../database/app_database.dart';
import '../error/server_exception.dart';

class ApiClient {
  final String baseUrl;
  final http.Client httpClient;
  final AppDatabase database;

  ApiClient({
    required this.baseUrl,
    required this.httpClient,
    required this.database,
  });

  Future<String?> _getToken() async {
    return database.getLoggedInUserToken();
  }

  Future<Map<String, String>> _buildHeaders() async {
    final token = await _getToken();
    return {
      'Content-Type': 'application/json',
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, String>? queryParams,
  }) async {
    final uri = Uri.parse(
      '$baseUrl$path',
    ).replace(queryParameters: queryParams);
    final headers = await _buildHeaders();
    final response = await httpClient.get(uri, headers: headers);
    return _handleResponse(response);
  }

  Future<List<dynamic>> getList(
    String path, {
    Map<String, String>? queryParams,
  }) async {
    final uri = Uri.parse(
      '$baseUrl$path',
    ).replace(queryParameters: queryParams);
    final headers = await _buildHeaders();
    final stopwatch = Stopwatch()..start();
    final response = await httpClient
        .get(uri, headers: headers)
        .timeout(
          const Duration(seconds: 30),
          onTimeout: () => throw ServerException('Request timed out for $path'),
        );
    if (kDebugMode) {
      debugPrint(
        '[ApiClient] GET LIST $path completed in ${stopwatch.elapsedMilliseconds}ms (status: ${response.statusCode})',
      );
    }
    return _handleListResponse(response);
  }

  Future<Map<String, dynamic>> post(
    String path, {
    Map<String, dynamic>? body,
  }) async {
    final uri = Uri.parse('$baseUrl$path');
    final headers = await _buildHeaders();
    final response = await httpClient.post(
      uri,
      headers: headers,
      body: jsonEncode(body),
    );
    return _handleResponse(response);
  }

  Future<Map<String, dynamic>> put(
    String path, {
    Map<String, dynamic>? body,
  }) async {
    final uri = Uri.parse('$baseUrl$path');
    final headers = await _buildHeaders();
    final response = await httpClient.put(
      uri,
      headers: headers,
      body: jsonEncode(body),
    );
    return _handleResponse(response);
  }

  Future<void> delete(String path) async {
    final uri = Uri.parse('$baseUrl$path');
    final headers = await _buildHeaders();
    final response = await httpClient.delete(uri, headers: headers);
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
      return body['detail'] ??
          'Request failed with status ${response.statusCode}';
    } catch (_) {
      return 'Request failed with status ${response.statusCode}';
    }
  }
}
