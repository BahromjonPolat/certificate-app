/*

  Created by: Bakhromjon Polat
  Created on: Apr 26 2023 18:57:06
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/core/errors/errors.dart';
import 'package:certificate/core/models/response/response_data.dart';
import 'package:dartz/dartz.dart';
import 'api_service.dart';

class ApiRequests extends ApiService {
  ApiRequests._();
  static final ApiRequests instance = ApiRequests._();

  Future<Either<ServerFailure, ApiResponse>> login({
    required String phone,
    required String password,
  }) async {
    return await post(
      '/auth/login',
      body: {
        'phone': phone,
        'password': password,
      },
    );
  }
}