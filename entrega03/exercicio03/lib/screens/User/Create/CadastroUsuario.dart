import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/screens/Login/LoginScreen.dart';
import 'package:exercicio03/screens/Login/bloc/login_bloc.dart';
import 'package:exercicio03/screens/User/Create/bloc/registeruser_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserRegisterScreen extends StatefulWidget {
  @override
  State<UserRegisterScreen> createState() {
    return UserRegisterScreenState();
  }
}

class UserRegisterScreenState extends State<UserRegisterScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String firstName = '';
  String lastName = '';
  String password = '';

  void _createUser({User user}) {
    final createUserEvent = CreateUserEvent(user: user);
    BlocProvider.of<UserRegisterBloc>(context).add(createUserEvent);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserRegisterBloc, UserRegisterState>(
      builder: (context, state) {
        print(state);
        if (state is UserRegisterInitialState) {
          return userRegisterForm();
        }

        if (state is UserRegisteredState) {
          return LoginScreen();
        }

        if (state is UserRegisterFailState) {
          return userRegisterForm();
        }

        if (state is UserRegisteringState) {
          return Scaffold(
            body: Center(
              child: Container(
                child: Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Text("Criando usuário..."),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Widget userRegisterForm() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastre-se"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildFirstName(),
            SizedBox(height: 16),
            buildLastName(),
            SizedBox(height: 16),
            buildEmail(),
            SizedBox(height: 16),
            buildPassword(),
            SizedBox(height: 16),
            buildSubmit()
          ],
        ),
      ),
    );
  }

  Widget buildFirstName() {
    return TextFormField(
      onSaved: (value) => setState(
        () => this.firstName = value,
      ),
      decoration: InputDecoration(
        labelText: 'First Name',
        border: UnderlineInputBorder(),
        icon: Icon(Icons.person),
      ),
      style: TextStyle(fontSize: 15),
    );
  }

  Widget buildLastName() {
    return TextFormField(
      onSaved: (value) => setState(
        () => this.lastName = value,
      ),
      decoration: InputDecoration(
        labelText: 'Last Name',
        border: UnderlineInputBorder(),
        icon: Icon(Icons.email),
      ),
      style: TextStyle(fontSize: 15),
    );
  }

  Widget buildEmail() {
    return TextFormField(
      onSaved: (value) => setState(
        () => this.email = value,
      ),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        border: UnderlineInputBorder(),
        icon: Icon(Icons.email),
      ),
      style: TextStyle(fontSize: 15),
    );
  }

  Widget buildPassword() {
    return TextFormField(
      onSaved: (value) => setState(
        () => this.password,
      ),
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        border: UnderlineInputBorder(),
        icon: Icon(Icons.email),
      ),
      style: TextStyle(fontSize: 15),
    );
  }

  Widget buildSubmit() {
    return SizedBox(
      width: 200.00,
      height: 50.00,
      child: ElevatedButton(
        onPressed: () {
          formKey.currentState.save();
          User newUser = User(
              id: null,
              firstName: this.firstName,
              lastName: this.lastName,
              email: this.email,
              password: this.password,
              isEnabled: null);

          _createUser(user: newUser);
        },
        child: Text(
          'Criar Conta',
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
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

  Widget CustomSnackbar({String message, bool isSucess}) {
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
      backgroundColor: isSucess ? Colors.green : Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
