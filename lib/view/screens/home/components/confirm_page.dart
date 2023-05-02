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
import 'package:flutter/cupertino.dart';
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
          ConfirmBloc confirmBloc = BlocProvider.of(context);

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppInputField.withPrefix(
                    controller: _uniqueCodeController,
                    icon: CupertinoIcons.ticket,
                    action: TextInputAction.done,
                    hint: 'Vaucher kodini kiriting!',
                    suffixIcon: state.hasFound
                        ? const Icon(
                            Icons.check,
                            color: Colors.green,
                          )
                        : null,
                    onChanged: (value) {
                      confirmBloc.add(ConfirmEvent.idChanged(value));
                    },
                  ),
                  const SizedBox(height: 24.0),
                  PrimaryButton(
                    isLoading: state.isLoading,
                    label: 'Confirm',
                    onPressed: () {
                      FormState? formState = _formKey.currentState;
                      bool isValid = formState?.validate() ?? false;
                      if (!isValid) return;

                      String branchId = employee.branchId;
                      confirmBloc.add(
                        ConfirmEvent.dataEntered(branchId: branchId),
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
