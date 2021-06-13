part of 'booklist_bloc.dart';

abstract class BookListState extends Equatable {
  const BookListState();

  @override
  List<Object> get props => [];
}

class BooklistInitialState extends BookListState {
  @override
  List<Object> get props => [];
}

class BookListLoadingState extends BookListState {
  @override
  List<Object> get props => [];
}

class BookListLoadedState extends BookListState {
  @override
  List<Object> get props => [];
}

class BookListErrorState extends BookListState {
  final String message;

  BookListErrorState({this.message});

  @override
  List<Object> get props => [message];
}
