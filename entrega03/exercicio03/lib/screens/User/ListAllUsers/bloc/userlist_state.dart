part of 'userlist_bloc.dart';

abstract class UserlistState extends Equatable {
  const UserlistState();

  @override
  List<Object> get props => [];
}

class UserListInitialState extends UserlistState {
  @override
  List<Object> get props => [];
}

class UserListLoadingState extends UserlistState {
  @override
  List<Object> get props => [];
}

class UserListLoadedState extends UserlistState {
  final List<User> usersList;

  UserListLoadedState({this.usersList});

  @override
  List<Object> get props => [usersList];
}

class UserListErrorState extends UserlistState {
  final String message;

  UserListErrorState({this.message});

  @override
  List<Object> get props => [message];
}

class UserListEmptyState extends UserlistState {
  @override
  List<Object> get props => [];
}
