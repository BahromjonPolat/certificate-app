part of 'certificate_bloc.dart';

@freezed
class CertificateState with _$CertificateState {
  const factory CertificateState.initial() = _Initial;
  const factory CertificateState.loading() = _Loading;
  const factory CertificateState.failed(String error) = _Failed;
  const factory CertificateState.success(List<CertificateModel> certificates) =
      _Success;
}
