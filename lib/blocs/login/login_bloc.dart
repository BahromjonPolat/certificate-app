/*

  Created by: Bakhromjon Polat
  Created on: Apr 27 2023 08:57:39
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:certificate/core/models/response/app_pref.dart';
import 'package:certificate/core/models/response/response_data.dart';
import 'package:certificate/services/api_requests.dart';
import 'package:common_models/common_models.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>(_login);
  }

  FutureOr<void> _login(
    LoginEvent event,
    Emitter emit,
  ) async {
    emit(LoginProcessingState());

    ApiRequests requests = ApiRequests.instance;
    final failureOrSuccess = await requests.login(
      password: event.password,
      phone: event.email,
    );

    LoginState completedState = await failureOrSuccess.fold(
      (l) => LoginFailedState(l.getMessage()),
      (r) async {
        Employee employee = Employee.fromJson(r.data);
        await AppPref.setToken(employee.token ?? '');
        await AppPref.setUser(employee);
        return LoginSuccessState(employee);
      },
    );

    emit(completedState);
  }
}
