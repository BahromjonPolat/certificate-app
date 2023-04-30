/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 13:11:09
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import '../../../../src/components/responses.dart';

Future<Response> onRequest(RequestContext context) async {
  final employee = await context.read<Future<Employee>>();
  final employeeBox = HiveBoxes.employeeBox;

  final employees = employeeBox.values
      .map(
        (e) => e.toJson()
          ..remove('token')
          ..remove('password'),
      )
      .toList();

  return AppResponse.success(
    body: {
      'total': employees.length,
      'data': employees,
    },
  );
}
