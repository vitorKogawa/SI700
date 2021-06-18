import 'package:exercicio03/AppWidget.dart';
import 'package:exercicio03/screens/Book/List/bloc/booklist_bloc.dart';
import 'package:exercicio03/screens/Login/bloc/login_bloc.dart';
import 'package:exercicio03/screens/User/Create/bloc/registeruser_bloc.dart';
// import 'package:exercicio03/screens/User/ListAllUsers/ListAllUsersScreen.dart';
import 'package:exercicio03/screens/User/ListAllUsers/bloc/userlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(LoginInitialState()),
        ),
        BlocProvider<UserlistBloc>(
          create: (context) => UserlistBloc(UserListInitialState()),
        ),
        BlocProvider<UserRegisterBloc>(
          create: (context) => UserRegisterBloc(UserRegisterInitialState()),
        ),
        BlocProvider<BooklistBloc>(
          create: (context) => BooklistBloc(BookListInitialState()),
        )
      ],
      child: AppWidget(),
    );
  }
}
