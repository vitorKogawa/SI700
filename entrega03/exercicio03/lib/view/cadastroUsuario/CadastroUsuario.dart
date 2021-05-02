import 'package:exercicio03/customWidgets/CustomRadioListTileButtonsGender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  State<CadastroUsuario> createState() {
    return CadastroUsuarioState();
  }
}

class CadastroUsuarioState extends State<CadastroUsuario> {
  @override
  Widget build(BuildContext context) {
    return CadastroUsuarioBody();
  }
}

enum Gender { masculino, feminino, outro }

class CadastroUsuarioBody extends StatelessWidget {
  //melhorar isso aqui depois
  String email = '';
  String firstName = '';
  String lastName = '';
  String password = '';
  String confirmPassword = '';
  bool termosDeUso = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cadastro')),
        body: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) => email = value,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        border: UnderlineInputBorder(),
                        icon: Icon(Icons.email)),
                    style: TextStyle(fontSize: 15),
                  ),
                  TextField(
                    onChanged: (value) => firstName = value,
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        border: UnderlineInputBorder(),
                        icon: Icon(Icons.person)),
                    style: TextStyle(fontSize: 15),
                  ),
                  TextField(
                    onChanged: (value) => lastName = value,
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        border: UnderlineInputBorder(),
                        icon: Icon(Icons.person_add_rounded)),
                    style: TextStyle(fontSize: 15),
                  ),
                  TextField(
                    onChanged: (value) => email = value,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: UnderlineInputBorder(),
                        icon: Icon(Icons.security)),
                    style: TextStyle(fontSize: 15),
                  ),
                  TextField(
                    onChanged: (value) => email = value,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        border:UnderlineInputBorder(),
                        icon: Icon(Icons.security_sharp)),
                    style: TextStyle(fontSize: 15),
                  ),
                  RadioListTileButtonGenderWidget(),
                  CheckboxListTile(
                      title: Text('Li e aceito os termos de uso'),
                      value: termosDeUso,
                      onChanged: (bool value) {
                        setState(() => termosDeUso = value);
                      }),
                  SizedBox(
                      width: 200.00,
                      height: 50.00,
                      child: ElevatedButton(
                        onPressed: () {
                          // final snackBar = SnackBar(
                          //   content: Text('Cadastro realizado com sucesso.'),
                          //   action: SnackBarAction(
                          //     label: 'Undo',
                          //     onPressed: () {
                          //       // Some code to undo the change.
                          //     },
                          //   ),
                          // );
                          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Text(
                          'Criar Conta',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                        side: BorderSide(color: Colors.blue)))),
                      ))
                ],
              ),
            )));
  }

  setState(Null Function() param0) {}
}
