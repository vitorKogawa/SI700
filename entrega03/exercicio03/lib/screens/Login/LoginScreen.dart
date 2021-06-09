//import 'package:exercicio03/customWidgets/CustomDrawer.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:exercicio03/userdata/login.dart';

class LoginScreen extends StatefulWidget {
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
                  buildBtnLogin(),
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

  Widget buildBtnLogin() {
    return SizedBox(
      width: 100.00,
      height: 50.00,
      child: ElevatedButton(
        onPressed: () => {
          formKey.currentState.save(),
          print('Email: ${this.email}\nPassword: ${this.password}'),
          // Navigator.pushNamed(
          //   context,
          //   AppRoutes.HOME,
          // )
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
