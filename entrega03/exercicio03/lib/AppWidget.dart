import 'package:exercicio03/controller/AppController.dart';
import 'package:exercicio03/view/HomePage/HomePage.dart';
import 'package:exercicio03/view/Sobre/Sobre.dart';
import 'package:exercicio03/view/cadastroUsuario/CadastroUsuario.dart';
import 'package:exercicio03/view/login/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, builder) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePageWidget(),
              '/about': (context) => SobreWidget(),
              '/cadastro-usuario': (context) => CadastroUsuario(),
            },
          );
        });
  }
}
