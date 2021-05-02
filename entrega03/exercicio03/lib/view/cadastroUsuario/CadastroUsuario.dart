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
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                TextField(
                  onChanged: (value) => email = value,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
                TextField(
                  onChanged: (value) => firstName = value,
                  decoration: InputDecoration(
                      labelText: 'First Name', border: OutlineInputBorder()),
                ),
                TextField(
                  onChanged: (value) => lastName = value,
                  decoration: InputDecoration(
                      labelText: 'Last Name', border: OutlineInputBorder()),
                ),
                TextField(
                  onChanged: (value) => email = value,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                ),
                TextField(
                  onChanged: (value) => email = value,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder()),
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
                        print('Cadastro concluído com sucesso.');
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
            )));
  }

  setState(Null Function() param0) {}
}
