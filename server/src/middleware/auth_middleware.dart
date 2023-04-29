/*

  Created by: Bakhromjon Polat
  Created on: Apr 20 2023 21:14:45
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/common_models.dart';
import 'package:dart_frog/dart_frog.dart';

import '../components/jwt_service.dart';
import '../components/responses.dart';

class AuthMiddleware {
  const AuthMiddleware({
    required this.jwtService,
  });
  final JwtService jwtService;

  Handler authRequired(Handler handler) {
    return (context) {
      final headers = context.request.headers;
      final token = headers['Authorization'] ?? headers['authorization'];

      if (token == null) {
        return AppResponse.unauthorized();
      }

      if (token.isEmpty) {
        return AppResponse.unauthorized();
      }

      final result = jwtService.verify(token);

      return result.fold(
        (l) => AppResponse.unauthorized(),
        (payload) async {
          final id = payload.subject;

          final box = HiveBoxes.employeeBox;

          final employee = box.get(id);

          if (employee == null) {
            return AppResponse.notFound(message: 'Employee not found');
          }

          final response = await handler(context);
          return response;
        },
      );
    };
  }

  Middleware employeeProvider() {
    return provider<Future<Employee>>((context) async {
      final headers = context.request.headers;
      final token = headers['authorization'];
      final payload = JwtService.instance.getPayload('$token');
      final id = payload.subject;
      final box = HiveBoxes.employeeBox;
      final employee = box.get(id);

      if (employee == null) {
        return Employee(role: 'failed');
      }

      return employee;
    });
  }
}
