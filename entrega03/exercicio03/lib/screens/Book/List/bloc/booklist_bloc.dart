import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'booklist_event.dart';
part 'booklist_state.dart';

class BooklistBloc extends Bloc<BookListEvent, BookListState> {
  BooklistBloc() : super(BooklistInitialState());

  @override
  Stream<BookListState> mapEventToState(
    BookListEvent event,
  ) async* {

  }
}
