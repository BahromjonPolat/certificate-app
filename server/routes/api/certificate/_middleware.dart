/*

  Created by: Bakhromjon Polat
  Created on: Apr 29 2023 20:23:52
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:dart_frog/dart_frog.dart';

import '../../../src/components/jwt_service.dart';
import '../../../src/middleware/auth_middleware.dart';

Handler middleware(Handler handler) {
  final authMiddleware = AuthMiddleware(jwtService: JwtService.instance);
  return handler
      .use(authMiddleware.employeeProvider())
      .use(authMiddleware.authRequired);
}
