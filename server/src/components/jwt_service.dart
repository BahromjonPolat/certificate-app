// ignore_for_file: avoid_catching_errors

/*

  Created by: Bakhromjon Polat
  Created on: Apr 20 2023 19:56:15
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dartz/dartz.dart';

import '../models/payload_model.dart';

class JwtService {
  JwtService._();
  static final JwtService instance = JwtService._();

  late String _issuer;
  late String _secretKey;

  void init({
    required String issuer,
    required String secretKey,
  }) {
    _issuer = issuer;
    _secretKey = secretKey;
  }

  JWT decode(String token) {
    final jwt = JWT.decode(token);
    return jwt;
  }

  Payload getPayload(String token) {
    return Payload.fromJson(decode(token).payload as Map<String, dynamic>);
  }

  String createToken(
    Map<String, dynamic> payload, {
    String? subject,
  }) {
    final jwt = JWT(
      payload,
      issuer: _issuer,
      subject: subject,
    );
    return jwt.sign(SecretKey(_secretKey));
  }

  Either<String, Payload> verify(String token) {
    try {
      final jwt = JWT.verify(token, SecretKey(_secretKey));

      return right(Payload.fromJson(jwt.payload as Map<String, dynamic>));
    } on JWTExpiredError {
      return left('Expired');
    } on JWTError catch (ex) {
      return left(ex.message);
    } catch (err) {
      return left(err.toString());
    }
  }
}
