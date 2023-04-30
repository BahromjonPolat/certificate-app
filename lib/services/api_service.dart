/*

  Created by: Bakhromjon Polat
  Created on: Apr 26 2023 16:09:00
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:convert';

import 'package:certificate/core/hive/app_pref.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../core/components/logger.dart';
import '../core/errors/failure.dart';
import '../core/models/response/response_data.dart';

class ApiService {
  final String _baseUrl = 'http://10.0.0.2:8080/api';
  // final String _baseUrl = 'http://192.168.43.42:8080/api';
  String get baseUrl => _baseUrl;

  Future<Either<ServerFailure, ApiResponse>> get(String path) async {
    try {
      Uri url = Uri.parse('$_baseUrl$path');

      http.Response response = await http.get(
        url,
        headers: getHeaders(),
      );
      final decoded = jsonDecode(response.body);
      ApiResponse responseData = ApiResponse.fromJson(decoded);
      if (response.statusCode == 200) {
        return right(responseData);
      }
      return left(ServerFailure(responseData));
    } catch (err) {
      return left(ServerFailure(err));
    }
  }

  Future<Either<ServerFailure, ApiResponse>> post(
    String path, {
    Object? body,
  }) async {
    try {
      Log.d(body, name: 'api_service');
      Uri url = Uri.parse('$_baseUrl$path');
      http.Response response = await http.post(
        url,
        body: jsonEncode(body),
        headers: getHeaders(),
      );
      final decoded = jsonDecode(response.body);
      ApiResponse responseData = ApiResponse.fromJson(decoded);
      if (response.statusCode == 200) {
        return right(responseData);
      }
      return left(ServerFailure(responseData));
    } catch (err) {
      return left(ServerFailure(err));
    }
  }

  Map<String, String> getHeaders() {
    final token = AppPref.token;
    return {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
  }
}
