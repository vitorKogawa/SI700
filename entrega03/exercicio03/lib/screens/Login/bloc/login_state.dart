part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitialState extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginAuthenticatingState extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginAuthenticatedState extends LoginState {
  User user;

  LoginAuthenticatedState({this.user});

  @override
  List<Object> get props => [];
}

class LoginNotAuthenticated extends LoginState {
  @override
  List<Object> get props => [];
}

class LoginErrorState extends LoginState {
  final String message;

  LoginErrorState({this.message});

  @override
  List<Object> get props => [];
}
