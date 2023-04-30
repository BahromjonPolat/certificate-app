/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 18:32:02
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/blocs/add_cert/add_cert_bloc.dart';
import 'package:certificate/core/core.dart';
import 'package:certificate/routing/routing.dart';
import 'package:certificate/view/widgets/calendar_widget.dart';
import 'package:certificate/view/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateCertificateScreen extends StatefulWidget {
  const CreateCertificateScreen({super.key});

  @override
  State<CreateCertificateScreen> createState() =>
      _CreateCertificateScreenState();
}

class _CreateCertificateScreenState extends State<CreateCertificateScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fromController = TextEditingController();
  final _toController = TextEditingController();
  final _priceController = TextEditingController();

  late AppCalendar appCalendar;
  @override
  void initState() {
    super.initState();
    appCalendar = AppCalendar(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add new certificate')),
      body: BlocConsumer<AddCertBloc, AddCertState>(
        listenWhen: (previous, current) => current.failureOrSuccess.isSome(),
        listener: (context, state) {
          AppSnackbar snackbar = AppSnackbar(context);
          state.failureOrSuccess.map((failureOrSuccess) {
            failureOrSuccess.fold(
              (l) {
                snackbar.show(content: l.getMessage(), isError: true);
              },
              (r) {
                snackbar.show(content: 'success');
                AppNavigator.pop('refresh');
              },
            );
          });
        },
        builder: (context, state) {
          AddCertBloc addCertBloc = BlocProvider.of(context);

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppInputField.withPrefix(
                    controller: _priceController,
                    assetIcon: CupertinoIcons.money_dollar,
                    formatters: [FilteringTextInputFormatter.digitsOnly],
                    hint: 'Enter price',
                    keyboardType: TextInputType.number,
                    validator: AppValidators.general,
                  ),
                  const SizedBox(height: 12.0),
                  AppInputField.withPrefix(
                    controller: _fromController,
                    assetIcon: CupertinoIcons.calendar,
                    validator: AppValidators.general,
                    hint: 'Enter from',
                    readOnly: true,
                    onTap: () {
                      appCalendar.show(
                        initial: state.from,
                        onDateSelected: (date) {
                          if (date == null) return;
                          addCertBloc.add(
                            AddCertEvent.fromSelected(
                              date.millisecondsSinceEpoch,
                            ),
                          );

                          String dateTime = AppFormatter.formatDate(
                            date,
                            pattern: 'dd.mm.yyyy',
                          );
                          _fromController.text = dateTime;
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 12.0),
                  AppInputField.withPrefix(
                    controller: _toController,
                    assetIcon: CupertinoIcons.calendar,
                    hint: 'Enter to',
                    readOnly: true,
                    validator: AppValidators.general,
                    onTap: () {
                      appCalendar.show(
                        initial: state.to,
                        onDateSelected: (date) {
                          if (date == null) return;
                          addCertBloc.add(
                            AddCertEvent.toSelected(
                              date.millisecondsSinceEpoch,
                            ),
                          );

                          String dateTime = AppFormatter.formatDate(
                            date,
                            pattern: 'dd.mm.yyyy',
                          );
                          _toController.text = dateTime;
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 24.0),
                  PrimaryButton(
                    isLoading: state.isLoading,
                    label: 'Add',
                    onPressed: () {
                      FormState? formState = _formKey.currentState;
                      bool isValid = formState?.validate() ?? false;
                      if (!isValid) return;
                      int price = int.parse(_priceController.text);
                      addCertBloc.add(AddCertEvent.added(price));
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
