part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState.initial() = _Initial;
  const factory DownloadState.loading() = _Loading;
  const factory DownloadState.failure(String error) = _Failure;
  const factory DownloadState.success(String filePath) = _Success;
}
