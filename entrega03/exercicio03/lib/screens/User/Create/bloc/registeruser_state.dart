part of 'registeruser_bloc.dart';

abstract class UserRegisterState extends Equatable {
  const UserRegisterState();

  @override
  List<Object> get props => [];
}

class UserRegisterInitialState extends UserRegisterState {
  @override
  List<Object> get props => [];
}

class UserRegisteringState extends UserRegisterState {
  @override
  List<Object> get props => [];
}

class UserRegisteredState extends UserRegisterState {}

class UserRegisterFailState extends UserRegisterState {}

class UserRegisterErrorState extends UserRegisterState {
  final String message;

  UserRegisterErrorState({this.message});

  @override
  List<Object> get props => [message];
}
