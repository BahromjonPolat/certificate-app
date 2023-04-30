/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 13:03:57
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:bloc/bloc.dart';
import 'package:certificate/services/api_requests.dart';
import 'package:common_models/common_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_event.dart';
part 'employee_state.dart';
part 'employee_bloc.freezed.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(const EmployeeState.initial()) {
    on<EmployeeEvent>((event, emit) async {
      emit(const EmployeeState.loading());

      final requests = ApiRequests.instance;

      final failureOrSuccess = await requests.getEmployees();

      failureOrSuccess.fold(
        (l) => emit(EmployeeState.failed(l.getMessage())),
        (r) {
          List<Employee> employees = (r.data['data'] as List)
              .map((e) => Employee.fromJson(e))
              .toList();
          emit(EmployeeState.success(employees));
        },
      );
    });
  }
}
