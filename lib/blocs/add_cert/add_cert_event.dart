part of 'add_cert_bloc.dart';

@freezed
class AddCertEvent with _$AddCertEvent {
  const factory AddCertEvent.added(int price) = _Added;
  const factory AddCertEvent.fromSelected(int from) = _FromSelected;
  const factory AddCertEvent.toSelected(int to) = _ToSelected;
}
