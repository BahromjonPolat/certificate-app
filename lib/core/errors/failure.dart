/*

  Created by: Bakhromjon Polat
  Created on: Apr 26 2023 20:51:43
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';

import '../models/response/response_data.dart';

abstract class Failure extends Equatable {
  final Object? error;
  const Failure(this.error);

  String getMessage();

  @override
  List<Object?> get props => [error];
}

class ServerFailure extends Failure {
  const ServerFailure(super.error);

  @override
  String getMessage() {
    Object? error = this.error;
    if (error is SocketException) {
      return error.message;
    } else if (error is HandshakeException) {
      return error.message;
    } else if (error is FormatException) {
      return error.message;
    } else if (error is HttpException) {
      return error.message;
    } else if (error is PlatformException) {
      return error.message ?? '';
    } else if (error is ApiResponse) {
      return error.message;
    }
    return error.toString();
  }
}
