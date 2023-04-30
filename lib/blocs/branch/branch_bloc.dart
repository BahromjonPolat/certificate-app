import 'package:bloc/bloc.dart';
import 'package:certificate/services/api_requests.dart';
import 'package:common_models/common_models.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_event.dart';
part 'branch_state.dart';
part 'branch_bloc.freezed.dart';

class BranchBloc extends Bloc<BranchEvent, BranchState> {
  BranchBloc() : super(const BranchState.initial()) {
    on<BranchEvent>((event, emit) async {
      emit(const BranchState.loading());

      final requests = ApiRequests.instance;

      final failureOrSuccess = await requests.getBranches();

      failureOrSuccess.fold(
        (l) => emit(BranchState.failed(l.getMessage())),
        (r) {
          List<BranchModel> branches = (r.data['data'] as List)
              .map((e) => BranchModel.fromJson(e))
              .toList();
          Map<String, BranchModel> entries = {};

          for (var branch in branches) {
            entries[branch.id] = branch;
          }
          HiveBoxes.branchBox.putAll(entries);
          emit(BranchState.success(branches));
        },
      );
    });
  }
}
