import 'package:exercicio03/controller/DarkModeController.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
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
    return AnimatedBuilder(
      animation: DarkModeController.instance,
      builder: (context, builder) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: DarkModeController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          home: LoginScreen(),
          routes: {
            AppRoutes.LOGIN: (context) => LoginScreen(),
            AppRoutes.HOME: (context) => HomeScreen(),
            AppRoutes.ABOUT: (context) => AboutScreen(),
            AppRoutes.USER_REGISTRATION: (context) => UserRegisterScreen(),
            AppRoutes.BOOK_DETAILS: (context) => BookDetailsScreen(),
            // AppRoutes.USER_LIST: (context) => ListUser()
          },
        );
      },
    );
  }
}
