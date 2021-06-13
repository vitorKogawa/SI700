part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginSignInEvent extends LoginEvent {
  final String email;
  final String password;

  LoginSignInEvent({this.email, this.password});

  @override
  List<Object> get props => [email, password];
}

class LoginSignOutEvent extends LoginEvent {
  @override
  List<Object> get props => [];
}
