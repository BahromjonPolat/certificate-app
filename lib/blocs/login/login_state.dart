part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginProcessingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final Employee employee;
  LoginSuccessState(this.employee);
}

class LoginFailedState extends LoginState {
  final String error;
  LoginFailedState(this.error);
}
