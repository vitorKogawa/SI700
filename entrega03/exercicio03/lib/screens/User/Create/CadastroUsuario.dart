import 'package:exercicio03/models/User.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 16)
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
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
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
      onSaved: (value) => setState(() => this.password),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
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

          print(newUser);

          // var result = await userRepository.store(user: newUser);

          // if (result) {
          //   Navigator.of(context).pushNamed(AppRoutes.USER_LIST);
          // } else {
          //   print("erro");
          // }
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
}
