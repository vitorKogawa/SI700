part of 'booklist_bloc.dart';

abstract class BookListEvent extends Equatable {
  const BookListEvent();

  @override
  List<Object> get props => [];
}

class FetchBookListEvent extends BookListEvent {
  @override
  List<Object> get props => [];
}
