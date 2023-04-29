/*

  Created by: Bakhromjon Polat
  Created on: Apr 24 2023 23:01:17
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import '../components/responses.dart';

Handler onRoleChecked(Handler handler) {
  return (context) async {
    final employee = await context.read<Future<Employee>>();
    if (employee.role != 'admin') {
      return AppResponse.forbidden();
    }

    final response = await handler(context);
    return response;
  };
}
