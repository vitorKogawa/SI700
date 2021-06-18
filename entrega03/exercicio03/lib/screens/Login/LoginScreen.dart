//import 'package:exercicio03/customWidgets/CustomDrawer.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:exercicio03/screens/HomePage/HomePage.dart';
import 'package:exercicio03/screens/Login/bloc/login_bloc.dart';
import 'package:exercicio03/screens/User/ListAllUsers/ListAllUsersScreen.dart';
import 'package:exercicio03/screens/User/ListAllUsers/bloc/userlist_bloc.dart';
import 'package:exercicio03/widget/core/CustomDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:exercicio03/userdata/login.dart';

class LoginScreen extends StatefulWidget {
  final String message;

  LoginScreen({this.message});

  @override
  State<LoginScreen> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<LoginBloc>(context);

    void _authenticate({String email, String password}) {
      final loginSignInEvent =
          LoginSignInEvent(email: email, password: password);
      bloc.add(loginSignInEvent);

      BlocProvider.of<UserlistBloc>(context).add(FetchUserListEvent());
    }

    return BlocBuilder<LoginBloc, LoginState>(
      // ignore: missing_return
      builder: (context, state) {
        if (state is LoginInitialState) {
          return loginForm();
        }

        if (state is LoginNotAuthenticated) {
          return loginForm();
        }

        if (state is LoginAuthenticatingState) {
          return loadingScreen();
        }

        if (state is LoginAuthenticatedState) {
          // return HomeScreen(user: state.user);
          return HomeScreen();
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
            Text('Checando Credenciais...')
          ],
        ),
      ),
    );
  }

  Widget loginForm() {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  buildLogo(),
                  SizedBox(height: 30),
                  buildEmail(),
                  SizedBox(height: 20),
                  buildPassword(),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 100.00,
                    height: 50.00,
                    child: ElevatedButton(
                      onPressed: () => {
                        formKey.currentState.save(),
                        BlocProvider.of<LoginBloc>(context).add(
                          LoginSignInEvent(
                              email: 'fulano1@gmail.com', password: 'fulano1'),
                        )
                      },
                      child: Text('Logar'),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  buildUserRegister()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLogo() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Image.asset('assets/images/book.png', width: 200),
      ),
    );
  }

  Widget buildEmail() {
    return TextFormField(
      onSaved: (value) => setState(() => this.email = value),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        border: UnderlineInputBorder(),
        icon: Icon(Icons.person),
      ),
    );
  }

  Widget buildPassword() {
    return TextFormField(
      onSaved: (value) => setState(() => this.password = value),
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        border: UnderlineInputBorder(),
        icon: Icon(Icons.security),
      ),
    );
  }

  Widget buildUserRegister() {
    return SizedBox(
      width: 200.00,
      height: 50.00,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(
          context,
          AppRoutes.USER_REGISTRATION,
        ),
        child: Text(
          'Criar Conta',
          style: TextStyle(color: Colors.black),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
