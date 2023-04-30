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

  Future<Either<ServerFailure, ApiResponse>> confirmCert({
    required String certificateId,
    required String branchId,
  }) async {
    return await post(
      '/certificate/confirm',
      body: {
        'id': certificateId,
        'branchId': branchId,
      },
    );
  }

  Future<Either<ServerFailure, ApiResponse>> getCertificateById({
    required String certificateId,
  }) async {
    return await get('/certificate/get/$certificateId');
  }

  Future<Either<ServerFailure, ApiResponse>> getCertificates() async {
    return await get('/certificate/get');
  }

  Future<Either<ServerFailure, ApiResponse>> createBranch({
    required String name,
    required String address,
    required String city,
  }) async {
    return await post('/branch/create', body: {
      'name': name,
      'address': address,
      'city': city,
    });
  }

  Future<Either<ServerFailure, ApiResponse>> getBranches() async {
    return await get('/branch/get');
  }

  Future<Either<ServerFailure, ApiResponse>> getEmployees() async {
    return await get('/employee/get');
  }

  Future<Either<ServerFailure, ApiResponse>> assignBranchToEmployee({
    required String employeeId,
    required String branchId,
  }) async {
    return await post(
      '/employee/update/$employeeId',
      body: {'branchId': branchId},
    );
  }
}
