part of 'update_employee_bloc.dart';

@freezed
class UpdateEmployeeEvent with _$UpdateEmployeeEvent {
  const factory UpdateEmployeeEvent.started({
    required String employeeId,
    required String branchId,
  }) = _Started;
}
