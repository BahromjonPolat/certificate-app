/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 17:58:18
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:bloc/bloc.dart';
import 'package:certificate/services/api_requests.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_employee_event.dart';
part 'update_employee_state.dart';
part 'update_employee_bloc.freezed.dart';

class UpdateEmployeeBloc
    extends Bloc<UpdateEmployeeEvent, UpdateEmployeeState> {
  UpdateEmployeeBloc() : super(const UpdateEmployeeState.initial()) {
    on<UpdateEmployeeEvent>((event, emit) async {
      final requests = ApiRequests.instance;
      emit(const UpdateEmployeeState.loading());
      final String employeeId = event.employeeId;
      final String branchId = event.branchId;

      final failureOrSuccess = await requests.assignBranchToEmployee(
        employeeId: employeeId,
        branchId: branchId,
      );

      failureOrSuccess.fold(
        (l) => emit(UpdateEmployeeState.failed(l.getMessage())),
        (r) => emit(const UpdateEmployeeState.success()),
      );
    });
  }
}
