import 'package:exercicio03/screens/Book/List/bloc/booklist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListBooksScreen extends StatefulWidget {
  @override
  _ListBooksScreenState createState() => _ListBooksScreenState();
}

class _ListBooksScreenState extends State<ListBooksScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooklistBloc, BookListState>(
      // ignore: missing_return
      builder: (context, state) {
        if (state is BookListInitialState) {
          BlocProvider.of<BooklistBloc>(context).add(FetchBookListEvent());
          return SizedBox.shrink();
        }

        if (state is BookListLoadedState) {
          return Center(
            child: Text("livros carregados"),
          );
        }

        if (state is BookListLoadingState) {
          return loadingScreen();
        }

        if (state is BookListErrorState) {
          return Center(
            child: Text(state.message),
          );
        }
      },
    );
  }

  Widget loadingScreen() {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Carregando livros...')
          ],
        ),
      ),
    );
  }
}
