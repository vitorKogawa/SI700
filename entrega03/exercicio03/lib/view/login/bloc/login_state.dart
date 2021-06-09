part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class InitialLoginState extends LoginState {
  @override
  List<Object> get props => [];
}

class StartLoginState extends LoginState {
  @override
  List<Object> get props => null;
}

// ESTADOS PARA O LOGIN
class SuccessLoginState extends LoginState {
  final User user;

  SuccessLoginState({this.user});

  @override
  List<Object> get props => [user];
}

class ErrorLoginState extends LoginState {
  final String message;

  ErrorLoginState({this.message});

  @override
  List<Object> get props => [message];
}

// ESTADOS PARA O SIGNOUT
class SucessLogoutState extends LoginState {
  final String message;

  SucessLogoutState({this.message});

  @override
  List<Object> get props => throw UnimplementedError();
}

class ErrorLogoutState extends LoginState {
  final String errorMessage;

  ErrorLogoutState({this.errorMessage});

  @override
  List<Object> get props => throw UnimplementedError();
}
