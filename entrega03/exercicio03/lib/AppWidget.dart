// import 'package:exercicio03/controller/DarkModeController.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
// import 'package:exercicio03/screens/Login/bloc/login_bloc.dart';
import 'package:exercicio03/screens/User/ListAllUsers/ListAllUsersScreen.dart';
// import 'package:exercicio03/screens/User/ListAllUsers/bloc/userlist_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exercicio03/screens/Login/LoginScreen.dart';
import 'package:exercicio03/screens/HomePage/HomePage.dart';
import 'package:exercicio03/screens/About/AboutScreen.dart';
import 'package:exercicio03/screens/User/Create/CadastroUsuario.dart';
import 'package:exercicio03/screens/BookDetails/BookDetailsScreen.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.LOGIN,
      routes: {
        AppRoutes.LOGIN: (context) => LoginScreen(),
        AppRoutes.HOME: (context) => HomeScreen(),
        AppRoutes.ABOUT: (context) => AboutScreen(),
        AppRoutes.USER_REGISTRATION: (context) => UserRegisterScreen(),
        AppRoutes.BOOK_DETAILS: (context) => BookDetailsScreen(),
        AppRoutes.USER_LIST: (context) => ListAllUsersScreen()
      },
    );
  }
}
