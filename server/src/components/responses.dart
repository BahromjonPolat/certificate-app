/*

  Created by: Bakhromjon Polat
  Created on: Apr 23 2023 08:55:16
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:dart_frog/dart_frog.dart';

class AppResponse {
  const AppResponse._();

  static Response success({
    required Map<String, Object?>? body,
    Map<String, Object>? headers,
  }) {
    return Response.json(
      headers: headers ?? {},
      body: {
        'status_code': 200,
        'error': false,
        'message': 'success',
        'data': body,
      },
    );
  }

  static Response badRequest({String message = 'Bad request'}) {
    return Response.json(
      statusCode: 400,
      body: {
        'status_code': 400,
        'error': true,
        'message': message,
      },
    );
  }

  static Response notFound({String message = 'Route not found'}) {
    return Response.json(
      statusCode: 404,
      body: {
        'status_code': 404,
        'error': true,
        'message': message,
      },
    );
  }

  static Response unauthorized() {
    return Response.json(
      statusCode: 401,
      body: {
        'error': true,
        'status_code': 401,
        'message': 'Unauthorized',
      },
    );
  }

  static Response conflict() {
    return Response.json(
      statusCode: 409,
      body: {
        'error': true,
        'status_code': 409,
        'message': 'User already exists',
      },
    );
  }

  static Response forbidden({String message = 'Access denied'}) {
    return Response.json(
      statusCode: 403,
      body: {
        'error': true,
        'status_code': 403,
        'message': message,
      },
    );
  }

  static Response validationError({
    Map<String, dynamic>? errors,
    String message = 'Validation error',
  }) {
    return Response.json(
      statusCode: 400,
      body: {
        'error': true,
        'status_code': 400,
        'message': message,
        'errors': errors?['errors'],
      },
    );
  }

  static Response preconditionFailed({
    Map<String, dynamic>? errors,
    String message = 'Precondition error',
  }) {
    return Response.json(
      statusCode: 412,
      body: {
        'error': true,
        'status_code': 412,
        'message': message,
      },
    );
  }

  static Response unhandledException(Object? error) {
    String? message;
    if (error is FormatException) {
      message = error.message;
    } else {
      message = error.toString();
    }
    return Response.json(
      statusCode: 422,
      body: {
        'error': true,
        'status_code': 422,
        'message': message,
      },
    );
  }
}
