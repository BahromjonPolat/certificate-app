/*

  Created by: Bakhromjon Polat
  Created on: Mar 05 2023 11:23:40
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/blocs/login/login_bloc.dart';
import 'package:certificate/core/core.dart';
import 'package:certificate/routing/routing.dart';
import 'package:certificate/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _phoneController = TextEditingController(text: '+998');
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _phoneController.addListener(() {
      if (_phoneController.text.length < 4) {
        _phoneController.text = "+998";
        _phoneController.selection = TextSelection.fromPosition(
          TextPosition(offset: _phoneController.text.length),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          AppSnackbar appSnackbar = AppSnackbar(context);
          if (state is LoginSuccessState) {
            String name = state.employee.name;
            appSnackbar.show(content: "Welcome back, $name!");
            AppNavigator.pushNamedAndRemoveUntil(RouteNames.home);
          }
          if (state is LoginFailedState) {
            appSnackbar.show(content: state.error, isError: true);
          }
        },
        builder: (context, state) {
          return Scaffold(
            // resizeToAvoidBottomInset: false,
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 24.0,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      "Welcome back!",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(),
                    ),
                    const Spacer(),
                    const SizedBox(height: 12.0),

                    // ! Phone
                    AppInputField.withPrefix(
                      icon: Icons.phone_outlined,
                      controller: _phoneController,
                      hint: "Enter Phone",
                      keyboardType: TextInputType.phone,
                      action: TextInputAction.next,
                      capitalization: TextCapitalization.none,
                      validator: AppValidators.phone,
                      formatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'(^\+?\d*)')),
                      ],
                    ),
                    const SizedBox(height: 12.0),

                    // ! Password
                    AppInputField.withPrefix(
                      icon: Icons.lock_outline,
                      controller: _passwordController,
                      hint: "Enter Password",
                      keyboardType: TextInputType.visiblePassword,
                      action: TextInputAction.done,
                      obscureText: true,
                      validator: AppValidators.general,
                    ),
                    const Spacer(),
                    PrimaryButton(
                      label: 'Login',
                      isLoading: state is LoginProcessingState,
                      onPressed: () {
                        FormState? formState = _formKey.currentState;
                        bool validate = formState?.validate() ?? false;
                        if (validate) {
                          formState?.save();

                          String email = _phoneController.text;
                          String password = _passwordController.text;

                          BlocProvider.of<LoginBloc>(context).add(
                            LoginEvent(email: email, password: password),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
