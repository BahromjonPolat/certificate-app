import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:certificate/core/errors/errors.dart';
import 'package:certificate/core/models/response/response_data.dart';
import 'package:certificate/services/api_requests.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_cert_event.dart';
part 'add_cert_state.dart';
part 'add_cert_bloc.freezed.dart';

class AddCertBloc extends Bloc<AddCertEvent, AddCertState> {
  AddCertBloc() : super(AddCertState.initial()) {
    on<AddCertEvent>((event, emit) async {
      Completer<AddCertState> completer = Completer();
      event.map(
        added: (value) async {
          final requests = ApiRequests.instance;
          emit(state.copyWith(isLoading: true));
          final failureOrSuccess = await requests.createCert(
            price: value.price,
            from: state.from,
            to: state.to,
          );
          completer.complete(
            state.copyWith(
              price: value.price,
              failureOrSuccess: some(failureOrSuccess),
              isLoading: false,
            ),
          );
        },
        fromSelected: (value) {
          emit(state.copyWith(from: value.from, failureOrSuccess: none()));
        },
        toSelected: (value) {
          emit(state.copyWith(to: value.to, failureOrSuccess: none()));
        },
      );

      final completedState = await completer.future;
      emit(completedState);
    });
  }
}
