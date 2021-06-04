//import 'package:exercicio03/customWidgets/CustomDrawer.dart';
import 'package:exercicio03/controller/UserController.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:exercicio03/services/Api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
//import 'package:exercicio03/userdata/login.dart';

class LoginPage extends StatefulWidget {
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
  String email = '';
  String password = '';

  UserController userController;

  @override
  Widget build(BuildContext context) {
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
                  onPressed: () async => {
                    await http.post(
                      "${Api.BASE_URL}/shared/login",
                      headers: {"Content-type": "application/json"},
                      body: convert.jsonEncode(
                        {"email": email, "password": password},
                      ),
                    ),
                    // if (response.statusCode == 200) {
                    //   var jsonResponse =
                    //       convert.jsonDecode(response.body) as Map<String, dynamic>;
                    //   var itemCount = jsonResponse['totalItems'];
                    //   print('Number of books about http: $itemCount.');
                    // } else {
                    //   print('Request failed with status: ${response.statusCode}.');
                    // }
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
}
