part of 'confirm_bloc.dart';

@freezed
class ConfirmEvent with _$ConfirmEvent {
  const factory ConfirmEvent.dataEntered({
    required String certificateId,
    required String branchId,
  }) = _DataEntered;
  const factory ConfirmEvent.confirmed() = _Confirmed;
}
