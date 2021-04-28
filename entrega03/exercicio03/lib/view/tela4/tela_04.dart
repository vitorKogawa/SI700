// Creation fourth screen
import 'package:flutter/material.dart';
import 'package:exercicio03/userdata/login.dart';
import 'package:exercicio03/userdata/complete.dart';

class FourthView extends StatelessWidget {
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  final LoginData loginData = new LoginData();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              // identificar cada funcionalidade parada usuário/senha
              usernameForm(),
              passwordForm(),
              submitButton(),
              submitButtonConfirmation()
            ],
          ),
        ),
      ),
    );
  }

  Widget usernameForm() {
    var textFormField = TextFormField(
      style: TextStyle(fontSize: 22),
      keyboardType: TextInputType.emailAddress,
      validator: (String inValue) {
        if (inValue.length == 0) {
          print("Please, type a new username.");
        }
        return null;
      },
      onSaved: (String inValue) {
        loginData.username = inValue;
      },
      decoration: InputDecoration(
          //errorStyle: TextStyle(color: Colors.black, fontSize: 15),
          icon: Icon(Icons.person),
          hintText: "user@servidor.com",
          labelText: "Username (E-mail Address)"),
    );
    return textFormField;
  }

  Widget passwordForm() {
    return TextFormField(
      style: TextStyle(fontSize: 22),
      obscureText: true,
      validator: (String inValue) {
        if (inValue.length < 10) {
          return "Mínimo de 10 letras";
        }
        return null;
      },
      onSaved: (String inValue) {
        loginData.password = inValue;
      },
      decoration: InputDecoration(
          icon: Icon(Icons.vpn_key), labelText: "Insira uma senha forte"),
    );
  }

  Widget submitButton() {
    // ignore: deprecated_member_use
    return RaisedButton(
      child: Text("Log In!"),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          loginData.catchData();
        }
      },
    );
  }

  Widget submitButtonConfirmation() {
    // ignore: deprecated_member_use
    return RaisedButton(
      child: Text("Log In with Confirmation!"),
      onPressed: () async {
        if (formKey.currentState.validate()) {
          await showDialog(
              context: formKey.currentContext,
              builder: (_) => generateConfirmationDialog(),
              barrierDismissible: false);
          if (loginData.passed) {
            formKey.currentState.save();
            loginData.catchData();
            loginData.passed = false;
          }
        }
      },
    );
  }

  Widget generateConfirmationDialog() {
    return AlertDialog(
      title: Text("Confirmação necessária"),
      content: Text("Você gostaria de salvar?"),
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
          child: Text("Sim"),
          onPressed: () {
            loginData.passed = true;
            Navigator.of(formKey.currentContext).pop();
          },
        ),
        // ignore: deprecated_member_use
        FlatButton(
          child: Text("Não"),
          onPressed: () {
            loginData.passed = false;
            Navigator.of(formKey.currentContext).pop();
          },
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 30,
      //shape: CircleBorder()
    );
  }
}

Widget onecheck() {
  return Row(
    children: [
      Flexible(
          child: Text(
        "Aceitar as políticas do aplicativo",
        style: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black),
      )),
      Row(
        children: [
          // myCheckbox(),
        ],
      )
    ],
  );
}

// Widget myCheckbox() {
//   return Checkbox(
//     value: completeForm.checkBoxValue,
//     onChanged: (bool value) {
//       setState(() {
//         completeForm.checkBoxValue = value;
//       });
//     },
//   );
// }
