import 'package:exercicio03/controller/UserController.dart';
import 'package:exercicio03/repository/UserRepository.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListUser extends StatefulWidget {
  UserController userController = new UserController();

  @override
  State<StatefulWidget> createState() => ListUserState();
}

class ListUserState extends State<ListUser> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.userController.findAll(),
      builder: (context, data) {
        if (data.hasData) {
          var users = data.data;

          return Scaffold(
            appBar: AppBar(
              title: Text("Lista de usuários cadastrados"),
              actions: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => Navigator.of(context)
                      .pushNamed(AppRoutes.USER_REGISTRATION),
                )
              ],
            ),
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                            "${users[index].firstName} ${users[index].lastName}"),
                        subtitle: Text("${users[index].email}"),
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
