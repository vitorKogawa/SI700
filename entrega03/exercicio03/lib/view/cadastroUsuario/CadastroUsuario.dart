import 'package:exercicio03/bloc/UserBloc.dart';
// import 'package:exercicio03/bloc/user_bloc.dart';
// import 'package:exercicio03/customWidgets/CustomRadioListTileButtonsGender.dart';
import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class CadastroUsuario extends StatefulWidget {
  final String errorMessage;

  CadastroUsuario({this.errorMessage});

  @override
  State<CadastroUsuario> createState() => CadastroUsuarioState();
}

enum Gender { masculino, feminino, outro }

class CadastroUsuarioState extends State<CadastroUsuario> {
  UserBloc bloc = UserBloc();

  String email = '';
  String firstName = '';
  String lastName = '';
  String password = '';
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
              StreamBuilder<int>(
                stream: bloc.output,
                initialData: 0,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("Erro ao cadastrar usuário"),
                    );
                  } else {
                    return SizedBox.shrink();
                  }
                },
              ),
              TextField(
                onChanged: (value) => this.email = value,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email',
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.email)),
                style: TextStyle(fontSize: 15),
              ),
              TextField(
                onChanged: (value) => this.firstName = value,
                decoration: InputDecoration(
                    labelText: 'First Name',
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.person)),
                style: TextStyle(fontSize: 15),
              ),
              TextField(
                onChanged: (value) => this.lastName = value,
                decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.person_add_rounded)),
                style: TextStyle(fontSize: 15),
              ),
              TextField(
                onChanged: (value) => this.password = value,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.security)),
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              widget.errorMessage == null
                  ? SizedBox.shrink()
                  : Text(widget.errorMessage),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 200.00,
                  height: 50.00,
                  child: ElevatedButton(
                    onPressed: () {
                      bloc.store(User(this.email, this.firstName, this.lastName,
                          this.password));

                      Navigator.pushNamed(
                          context, AppRoutes.USUARIOS_CADASTRADOS);
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
}
