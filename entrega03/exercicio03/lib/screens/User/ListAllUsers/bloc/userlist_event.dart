part of 'userlist_bloc.dart';

abstract class UserlistEvent extends Equatable {
  const UserlistEvent();

  @override
  List<Object> get props => [];
}

class FetchUserListEvent extends UserlistEvent {
  @override
  List<Object> get props => [];
}

class FetchUserListErrorEvent extends UserlistEvent {
  @override
  List<Object> get props => [];
}

class FetchUserListEmptyEvent extends UserlistEvent {
  @override
  List<Object> get props => [];
}
