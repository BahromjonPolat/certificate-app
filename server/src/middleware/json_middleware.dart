/*

  Created by: Bakhromjon Polat
  Created on: Apr 23 2023 08:52:55
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';

import '../components/responses.dart';
import '../validators/app_validator.dart';

Handler jsonMiddleware(Handler handler) {
  return (context) async {
    final body = await context.request.body();
    if (body.isEmpty) {
      return AppResponse.badRequest();
    }

    try {
      final decoded = jsonDecode(body);

      if (decoded is! Map && decoded is! List) {
        return AppResponse.badRequest(
          message: '${decoded.runtimeType} is not subtype of Map',
        );
      }
      final response = await handler(context);
      return response;
    } catch (err) {
      return AppResponse.unhandledException(err);
    }
  };
}

Handler onPhoneAndPasswordMiddleware(Handler handler) {
  return (context) async {
    final body = await context.request.body();
    final decoded = jsonDecode(body) as Map;
    final phone = decoded['phone'];
    final password = decoded['password'];
    final validEmail = AppValidator.phone(phone);
    if (validEmail != null) {
      return AppResponse.badRequest(message: validEmail);
    }

    final validPassword = AppValidator.general(password);
    if (validPassword != null) {
      return AppResponse.badRequest(message: 'password $validPassword');
    }
    final response = await handler(context);
    return response;
  };
}
