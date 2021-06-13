part of 'bookdetais_bloc.dart';

abstract class BookDetailsState extends Equatable {
  const BookDetailsState();

  @override
  List<Object> get props => [];
}

class BookDetaisInitialState extends BookDetailsState {
  @override
  List<Object> get props => [];
}

class BookDetailsLoadingState extends BookDetailsState {
  @override
  List<Object> get props => [];
}

class BookDetailsLoadedState extends BookDetailsState {
  final Book book;

  BookDetailsLoadedState({this.book});

  @override
  List<Object> get props => [];
}

class BookDetailsErrorState extends BookDetailsState {
  final String message;

  BookDetailsErrorState({this.message});

  @override
  List<Object> get props => [];
}
