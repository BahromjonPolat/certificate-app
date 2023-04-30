/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 17:36:25
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:dart_frog/dart_frog.dart';

import '../../../../src/components/jwt_service.dart';
import '../../../../src/middleware/auth_middleware.dart';
import '../../../../src/middleware/http_methods_middleware.dart';
import '../../../../src/middleware/json_middleware.dart';
import '../../../../src/middleware/role_middleware.dart';

Handler middleware(Handler handler) {
  final authMiddleware = AuthMiddleware(jwtService: JwtService.instance);
  return handler
      .use(jsonMiddleware)
      .use(onRoleChecked)
      .use(authMiddleware.employeeProvider())
      .use(authMiddleware.authRequired)
      .use(onPostRequestMiddleware);
}
