/*

  Created by: Bakhromjon Polat
  Created on: Mar 16 2023 22:44:02
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
import 'package:uuid/uuid.dart';

import '../../../src/components/jwt_service.dart';
import '../../../src/components/responses.dart';
import '../../../src/validators/user_validator.dart';

Future<Response> onRequest(RequestContext context) async {
  final data = await context.request.body();

  final decoded = jsonDecode(data) as Map<String, dynamic>;
  final phone = decoded['phone'];
  final password = decoded['password'];
  final userValidator = UserValidator();
  final employeeBox = HiveBoxes.employeeBox;
  final validatorResult = userValidator.validate(decoded);
  if (validatorResult.hasError) {
    final error = validatorResult.errors.first.message;
    return AppResponse.badRequest(message: error);
  }

  Employee? employee;

  try {
    employee = employeeBox.values.firstWhere(
      (e) => e.phone == phone,
    );

    return AppResponse.badRequest(message: 'phone already exists');
  } catch (err) {}

  if (employee != null) {
    return AppResponse.badRequest(message: 'email already exists');
  }

  final now = DateTime.now().millisecondsSinceEpoch;
  final id = const Uuid().v4();
  employee = Employee(
    id: id,
    createdAt: now,
    updatedAt: now,
    lastSeen: now,
    password: BCrypt.hashpw(password.toString(), BCrypt.gensalt()),
    role: 'admin',
    name: decoded['name'].toString(),
    phone: phone.toString(),
  );

  await employeeBox.put(employee.id, employee);

  final jwt = JwtService.instance;
  final token = jwt.createToken(
    {'role': employee.role},
    subject: id,
  );
  return AppResponse.success(
    headers: {'x-auth-token': token},
    body: employee.toJson()
      ..addAll({'token': token})
      ..remove('password'),
  );
}
