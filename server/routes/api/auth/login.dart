/*

  Created by: Bakhromjon Polat
  Created on: Mar 16 2023 22:40:47
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:convert';

import 'package:bcrypt/bcrypt.dart';
import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import '../../../src/components/jwt_service.dart';
import '../../../src/components/responses.dart';

Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.body();
  final decoded = jsonDecode(body) as Map;
  final phone = decoded['phone'];
  final password = decoded['password'];
  final device = decoded['device'];
  final employeeBox = HiveBoxes.employeeBox;

  Employee? employee;

  try {
    employee = employeeBox.values.firstWhere(
      (e) => e.phone == phone,
    );
  } catch (err) {
    return AppResponse.notFound(message: 'User not found');
  }

  final isAuth = BCrypt.checkpw(password.toString(), employee.password);

  if (!isAuth) {
    return AppResponse.unauthorized();
  }
  final id = employee.id;

  final jwt = JwtService.instance;
  final token = jwt.createToken(
    {'role': employee.role},
    subject: id,
  );
  await employeeBox.put(
    employee.id,
    employee.copyWith(lastSeen: DateTime.now().millisecondsSinceEpoch),
  );
  return AppResponse.success(
    headers: {'x-auth-token': token},
    body: employee.toJson()
      ..addAll({'token': token})
      ..remove('password'),
  );
}
