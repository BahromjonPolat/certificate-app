part of 'confirm_bloc.dart';

@freezed
class ConfirmEvent with _$ConfirmEvent {
  const factory ConfirmEvent.idChanged(String id) = _IdChanged;
  const factory ConfirmEvent.dataEntered({required String branchId}) =
      _DataEntered;
  const factory ConfirmEvent.confirmed() = _Confirmed;
}
