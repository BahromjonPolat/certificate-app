part of 'employee_bloc.dart';

@freezed
class EmployeeState with _$EmployeeState {
  const factory EmployeeState.initial() = _Initial;
  const factory EmployeeState.loading() = _Loading;
  const factory EmployeeState.failed(String error) = _Failed;
  const factory EmployeeState.success(List<Employee> employees) = _Success;
}
