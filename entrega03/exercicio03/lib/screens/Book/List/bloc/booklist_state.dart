part of 'booklist_bloc.dart';

abstract class BookListState extends Equatable {
  const BookListState();

  @override
  List<Object> get props => [];
}

class BookListInitialState extends BookListState {
  @override
  List<Object> get props => [];
}

class BookListLoadingState extends BookListState {
  @override
  List<Object> get props => [];
}

class BookListLoadedState extends BookListState {
  final List<Book> books;

  BookListLoadedState({this.books});

  @override
  List<Object> get props => [books];
}

class BookListEmptyState extends BookListState {
  @override
  List<Object> get props => [];
}

class BookListErrorState extends BookListState {
  final String message;

  BookListErrorState({this.message});

  @override
  List<Object> get props => [message];
}
