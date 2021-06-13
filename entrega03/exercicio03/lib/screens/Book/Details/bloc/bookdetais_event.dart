part of 'bookdetais_bloc.dart';

abstract class BookDetailsEvent extends Equatable {
  const BookDetailsEvent();

  @override
  List<Object> get props => [];
}

class FetchBookEvent extends BookDetailsEvent {
  final Book book;

  FetchBookEvent({this.book});

  @override
  List<Object> get props => [book];
}

class FetchBookErrorEvent extends BookDetailsEvent {
  @override
  List<Object> get props => [];
}

class FetchBookEmptyState extends BookDetailsEvent {
  @override
  List<Object> get props => [];
}
