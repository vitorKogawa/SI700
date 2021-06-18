import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercicio03/models/Book.dart';
import 'package:exercicio03/repository/BookRepository.dart';

part 'booklist_event.dart';
part 'booklist_state.dart';

class BooklistBloc extends Bloc<BookListEvent, BookListState> {
  BooklistBloc(BookListState initialState) : super(BookListInitialState());

  BookRepository _bookRepository = new BookRepository();

  @override
  Stream<BookListState> mapEventToState(
    BookListEvent event,
  ) async* {
    if (event is FetchBookListEvent) {
      try {
        yield BookListLoadingState();
        print("Carregando livros");

        final books = await _bookRepository.findAll();

        if (books.length != 0) {
          yield BookListLoadedState();
        } else {
          yield BookListEmptyState();
        }
      } catch (e) {
        print(e);
        yield BookListErrorState(message: "Erro ao listar livros.");
      }
    }
  }
}
