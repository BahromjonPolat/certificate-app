part of 'update_employee_bloc.dart';

@freezed
class UpdateEmployeeState with _$UpdateEmployeeState {
  const factory UpdateEmployeeState.initial() = _Initial;
  const factory UpdateEmployeeState.loading() = _Loading;
  const factory UpdateEmployeeState.success() = _Success;
  const factory UpdateEmployeeState.failed(String error) = _Failed;
}
