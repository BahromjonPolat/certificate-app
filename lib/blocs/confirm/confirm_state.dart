part of 'confirm_bloc.dart';

@freezed
class ConfirmState with _$ConfirmState {
  const factory ConfirmState({
    required String certificateId,
    required String branchId,
    required bool isLoading,
    required Option<Either<ServerFailure, ApiResponse>> failureOrSuccess,
  }) = _ConfirmState;
  factory ConfirmState.initial() => ConfirmState(
        certificateId: '',
        branchId: '',
        failureOrSuccess: none(),
        isLoading: false,
      );
}
