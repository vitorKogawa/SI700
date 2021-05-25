// import 'package:exercicio03/bloc/user_bloc.dart';
import 'package:exercicio03/controller/AppController.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:exercicio03/view/DetalhesLivro/DetalhesLivro.dart';
import 'package:exercicio03/view/HomePage/HomePage.dart';
import 'package:exercicio03/view/Sobre/Sobre.dart';
import 'package:exercicio03/view/UserList/UserList.dart';
// import 'package:exercicio03/view/UserList/UserList.dart';
// import 'package:exercicio03/view/UsuariosCadastrados/UserList.dart';
import 'package:exercicio03/view/cadastroUsuario/CadastroUsuario.dart';
import 'package:exercicio03/view/login/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, builder) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: AppRoutes.CADASTRO_USUARIO,
            routes: {
              AppRoutes.LOGIN: (context) => LoginPage(),
              AppRoutes.HOME: (context) => HomePage(),
              AppRoutes.SOBRE_NOS: (context) => SobreWidget(),
              AppRoutes.CADASTRO_USUARIO: (context) => CadastroUsuario(),
              AppRoutes.USUARIOS_CADASTRADOS: (context) => UserList(),
              AppRoutes.DETALHES_LIVRO: (context) => DetalhesLivroWidget()
            },
          );
        });
  }
}
