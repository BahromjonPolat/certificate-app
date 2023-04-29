/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 20:22:47
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'dart:convert';

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';
import 'package:uuid/uuid.dart';

import '../../../src/components/responses.dart';
import '../../../src/validators/certificate_validator.dart';

Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.body();
  final json = jsonDecode(body) as Map<String, dynamic>;
  final branchValidator = CertificateValidator();
  final result = branchValidator.validate(json);

  if (result.hasError) {
    return AppResponse.validationError(errors: result.toJson());
  }

  final employee = await context.read<Future<Employee>>();

  final id = const Uuid().v4();
  return Response.json();
}
