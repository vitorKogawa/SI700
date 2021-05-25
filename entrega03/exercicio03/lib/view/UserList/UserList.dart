import 'package:exercicio03/database/Database.dart';
import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  List<User> users;
  String errorMessage;

  UserList({this.errorMessage, this.users});

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    print(widget.errorMessage);
    return FutureBuilder(
      future: DatabaseConnection.instace.findAll(),
      builder: (context, data) {
        if (data.hasData) {
          //pegando o map com os usuários cadastrados
          var users = data.data;

          return Scaffold(
            appBar: AppBar(
              title: Text("Lista de usuários cadastrados"),
              actions: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () =>
                      Navigator.pushNamed(context, AppRoutes.CADASTRO_USUARIO),
                )
              ],
            ),
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      // var key = users[index];
                      return ListTile(
                        title: Text(
                            "${users[index]['firstName']} ${users[index]['lastName']}"),
                        subtitle: Text("${users[index]['email']}"),
                      );
                    })),
          );
        } else {
          return Scaffold(
            appBar: AppBar(title: Text("Lista de usuários cadastrados")),
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Text("Nenhum usuário cadastrado"),
                )),
          );
        }
      },
    );
  }
}
