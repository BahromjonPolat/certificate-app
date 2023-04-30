/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 17:35:42
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:convert';

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import '../../../../src/components/responses.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  final employeeBox = HiveBoxes.employeeBox;
  final employee = employeeBox.get(id);
  if (employee == null) {
    return AppResponse.notFound(message: 'Employee not found');
  }
  final body = await context.request.body();
  final decoded = jsonDecode(body);

  final branchId = decoded['branchId'].toString();
  final branchBox = HiveBoxes.branchBox;
  final branch = branchBox.get(branchId);

  if (branch == null) {
    return AppResponse.notFound(message: 'Branch not found');
  }

  await employeeBox.put(
    id,
    employee.copyWith(
      branchId: branchId,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
    ),
  );

  return AppResponse.success(body: employee.toJson());
}
