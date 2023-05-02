/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 11:24:42
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:certificate/core/core.dart';
import 'package:certificate/services/api_requests.dart';
import 'package:common_models/common_models.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_event.dart';
part 'confirm_state.dart';
part 'confirm_bloc.freezed.dart';

class ConfirmBloc extends Bloc<ConfirmEvent, ConfirmState> {
  ConfirmBloc() : super(ConfirmState.initial()) {
    final box = HiveBoxes.certificateBox;
    on<ConfirmEvent>((event, emit) async {
      ApiRequests requests = ApiRequests.instance;
      Completer<ConfirmState> completer = Completer();
      event.map(
        idChanged: (value) {
          final cert = box.get(value.id);
          emit(state.copyWith(
            certificateId: value.id,
            failureOrSuccess: none(),
            hasFound: cert != null,
          ));
        },
        dataEntered: (value) {
          emit(
            state.copyWith(
              branchId: value.branchId,
              failureOrSuccess: none(),
            ),
          );
        },
        confirmed: (value) async {
          emit(state.copyWith(
            isLoading: true,
            failureOrSuccess: none(),
          ));

          final failureOrSuccess = await requests.confirmCert(
            certificateId: state.certificateId,
            branchId: state.branchId,
          );

          completer.complete(
            state.copyWith(
              isLoading: false,
              hasFound: false,
              failureOrSuccess: some(failureOrSuccess),
            ),
          );
        },
      );

      final completedState = await completer.future;
      emit(completedState);
    });
  }
}
