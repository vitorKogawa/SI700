//import 'package:exercicio03/customWidgets/CustomDrawer.dart';
// import 'package:exercicio03/controller/UserController.dart';
import 'package:exercicio03/controller/UserController.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:exercicio03/view/Login/bloc/login_bloc.dart';
// import 'package:exercicio03/services/Api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:http/http.dart';
//import 'package:exercicio03/userdata/login.dart';

class LoginPage extends StatefulWidget {
  String errorMessage;

  LoginPage({this.errorMessage});

  @override
  State<LoginPage> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormLoginBody(),
    );
  }
}

class FormLoginBody extends StatelessWidget {
  String email = 'fulano1@gmail.com';
  String password = 'fulano1';

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<LoginBloc>(context);

    void _authenticate({String email, String password}) {
      final sigInEvent = SignInEvent(email: email, password: password);
      bloc.add(sigInEvent);
    }

    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset('assets/images/book.png', width: 200),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                onChanged: (value) => email = value,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) => password = value,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: UnderlineInputBorder(),
                  icon: Icon(Icons.security),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200.00,
                height: 50.00,
                child: ElevatedButton(
                  onPressed: () => {
                    _authenticate(email: this.email, password: this.password),
                  },
                  child: Text('Logar'),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 200.00,
                height: 50.00,
                child: ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.USER_REGISTRATION),
                  child: Text(
                    'Criar Conta',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}

  void login({String email, String password}) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String uri = "https://si700backend.herokuapp.com/shared/login";

    Response response = await http.post(
      Uri.parse(uri),
      headers: headers,
      body: convert.jsonEncode(
        <String, String>{"email": this.email, "password": this.password},
      ),
    );
    print(response.body);
  }
}
