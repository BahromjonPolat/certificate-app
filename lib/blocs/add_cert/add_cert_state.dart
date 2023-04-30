part of 'add_cert_bloc.dart';

@freezed
class AddCertState with _$AddCertState {
  const factory AddCertState({
    required int from,
    required int to,
    required int price,
    required Option<Either<ServerFailure, ApiResponse>> failureOrSuccess,
    required bool isLoading,
  }) = _AddCertState;
  factory AddCertState.initial() => AddCertState(
        from: 0,
        price: 0,
        to: 0,
        failureOrSuccess: none(),
        isLoading: false,
      );
}
