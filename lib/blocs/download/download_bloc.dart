import 'package:bloc/bloc.dart';
import 'package:certificate/services/api_requests.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_event.dart';
part 'download_state.dart';
part 'download_bloc.freezed.dart';

class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  DownloadBloc() : super(const DownloadState.initial()) {
    on<DownloadEvent>((event, emit) async {
      final requests = ApiRequests.instance;
      emit(const DownloadState.loading());
      final failureOrSuccess = await requests.downloadCertificate();

      failureOrSuccess.fold(
        (l) => emit(DownloadState.failure(l.getMessage())),
        (r) => emit(DownloadState.success(r.data['file_url'])),
      );
    });
  }
}
