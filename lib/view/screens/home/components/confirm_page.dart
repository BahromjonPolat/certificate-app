/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 11:04:37
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/core/core.dart';
import 'package:certificate/view/widgets/widgets.dart';
import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/confirm/confirm_bloc.dart';
import 'autocomlete_widget.dart';

class ConfirmPage extends StatelessWidget {
  ConfirmPage({super.key, required this.employee});
  final Employee employee;
  final _uniqueCodeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConfirmBloc(),
      child: BlocConsumer<ConfirmBloc, ConfirmState>(
        listenWhen: (previous, current) => current.failureOrSuccess.isSome(),
        listener: (context, state) {
          AppSnackbar snackbar = AppSnackbar(context);
          state.failureOrSuccess.map((failureOrSuccess) {
            failureOrSuccess.fold(
              (l) {
                snackbar.show(
                  isError: true,
                  content: l.getMessage(),
                );
              },
              (r) {
                snackbar.show(content: r.message);
                _uniqueCodeController.clear();
              },
            );
          });
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutocompleteWidget(
                    controller: _uniqueCodeController,
                    certificates: HiveBoxes.certificateBox.values,
                  ),
                  const SizedBox(height: 24.0),
                  PrimaryButton(
                    isLoading: state.isLoading,
                    label: 'Confirm',
                    onPressed: () {
                      FormState? formState = _formKey.currentState;
                      bool isValid = formState?.validate() ?? false;
                      if (!isValid) return;

                      ConfirmBloc confirmBloc = BlocProvider.of(context);
                      String id = _uniqueCodeController.text.trim();
                      String branchId = employee.branchId;
                      confirmBloc.add(
                        ConfirmEvent.dataEntered(
                          certificateId: id,
                          branchId: branchId,
                        ),
                      );
                      confirmBloc.add(const ConfirmEvent.confirmed());
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
