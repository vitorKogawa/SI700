part of 'registeruser_bloc.dart';

abstract class UserRegisterEvent extends Equatable {
  const UserRegisterEvent();

  @override
  List<Object> get props => [];
}

class CreateUserEvent extends UserRegisterEvent {
  User user;

  CreateUserEvent({this.user});

  @override
  List<Object> get props => [user];
}
