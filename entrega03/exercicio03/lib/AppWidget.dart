import 'package:exercicio03/controller/AppController.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:exercicio03/view/DetalhesLivro/DetalhesLivro.dart';
import 'package:exercicio03/view/HomePage/HomePage.dart';
import 'package:exercicio03/view/ListUser/ListUser.dart';
import 'package:exercicio03/view/Login/bloc/login_bloc.dart';
import 'package:exercicio03/view/Sobre/Sobre.dart';
import 'package:exercicio03/view/cadastroUsuario/CadastroUsuario.dart';
import 'package:exercicio03/view/login/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  : Brightness.light,
            ),
            home: MultiBlocProvider(
              providers: [
                BlocProvider<LoginBloc>(
                  create: (context) => LoginBloc(
                    InitialLoginState(),
                  ),
                ),
              ],
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is StartLoginState)
                    return Center(
                      child: CircularProgressIndicator(),
                    );

                  if (state is ErrorLoginState)
                    return LoginPage(
                      errorMessage: "Dados de acesso inválidos.",
                    );

                  if (state is SuccessLoginState)
                    return HomePage(
                      message: 'Bem vindo ${state.user.firstName}',
                      user: state.user,
                    );

                  if (state is SucessLogoutState) return LoginPage();

                  if (state is ErrorLogoutState)
                    return HomePage(
                      message: 'Erro ao sair.',
                    );

                  return LoginPage();
                },
              ),
            ),
            routes: {
              AppRoutes.LOGIN: (context) => LoginPage(),
              AppRoutes.HOME: (context) => HomePage(),
              AppRoutes.ABOUT: (context) => SobreWidget(),
              AppRoutes.USER_REGISTRATION: (context) => CadastroUsuario(),
              AppRoutes.BOOK_DETAILS: (context) => DetalhesLivroWidget(),
              AppRoutes.USER_LIST: (context) => ListUser()
            },
          );
        });
  }
}
