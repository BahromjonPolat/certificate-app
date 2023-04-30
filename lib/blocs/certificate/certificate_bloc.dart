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
          List<CertificateModel> employees = (r.data['data'] as List)
              .map((e) => CertificateModel.fromJson(e))
              .toList();
          emit(CertificateState.success(employees));
        },
      );
    });
  }
}
