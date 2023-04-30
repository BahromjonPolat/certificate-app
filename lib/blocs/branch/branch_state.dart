part of 'branch_bloc.dart';

@freezed
class BranchState with _$BranchState {
  const factory BranchState.initial() = _Initial;
  const factory BranchState.loading() = _Loading;
  const factory BranchState.failed(String error) = _Failed;
  const factory BranchState.success(List<BranchModel> branches) = _Success;
}
