/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 19:10:54
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

import '../../../../src/components/responses.dart';
import '../../../../src/validators/branch_validator.dart.dart';

Future<Response> onRequest(RequestContext context) async {
  final body = await context.request.body();
  final json = jsonDecode(body) as Map<String, dynamic>;
  final branchValidator = BranchValidator();
  final result = branchValidator.validate(json);

  if (result.hasError) {
    return AppResponse.validationError(errors: result.toJson());
  }

  final employee = await context.read<Future<Employee>>();

  final id = const Uuid().v4();
  final branch = BranchModel(
    id: id,
    address: json['address'].toString(),
    city: json['city'].toString(),
    name: json['name'].toString(),
    createdAt: DateTime.now().millisecondsSinceEpoch,
    createdBy: employee.id,
  );

  final box = HiveBoxes.branchBox;
  await box.put(id, branch);

  return AppResponse.success(body: branch.toJson());
}
