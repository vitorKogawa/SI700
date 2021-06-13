import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:exercicio03/models/Book.dart';

part 'bookdetais_event.dart';
part 'bookdetais_state.dart';

class BookdetaisBloc extends Bloc<BookDetailsEvent, BookDetailsState> {
  BookdetaisBloc() : super(BookDetaisInitialState());

  @override
  Stream<BookDetailsState> mapEventToState(
    BookDetailsEvent event,
  ) async* {
    if (event is FetchBookEvent) {
      try {
        // code ...
      } catch (e) {
        print(e);
        yield BookDetailsErrorState(
            message: "Erro ao buscar livro, tente mais tarde");
      }
    }
  }
}
