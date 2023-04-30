import 'package:bloc/bloc.dart';
import 'package:certificate/services/api_requests.dart';
import 'package:common_models/common_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate_event.dart';
part 'certificate_state.dart';
part 'certificate_bloc.freezed.dart';

class CertificateBloc extends Bloc<CertificateEvent, CertificateState> {
  CertificateBloc() : super(const CertificateState.initial()) {
    on<CertificateEvent>((event, emit) async {
      emit(const CertificateState.loading());

      final requests = ApiRequests.instance;

      final failureOrSuccess = await requests.getCertificates();

      failureOrSuccess.fold(
        (l) => emit(CertificateState.failed(l.getMessage())),
        (r) {
          List<CertificateModel> certificates = (r.data['data'] as List)
              .map((e) => CertificateModel.fromJson(e))
              .toList();
          Map<String, CertificateModel> entries = {};
          for (var element in certificates) {
            entries[element.id] = element;
          }
          HiveBoxes.certificateBox.putAll(entries);
          emit(CertificateState.success(certificates));
        },
      );
    });
  }
}
