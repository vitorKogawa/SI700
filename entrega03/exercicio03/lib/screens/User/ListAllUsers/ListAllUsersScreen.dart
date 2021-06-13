import 'package:exercicio03/screens/User/ListAllUsers/bloc/userlist_bloc.dart';
import 'package:exercicio03/widget/core/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exercicio03/models/User.dart';

class ListAllUsersScreen extends StatefulWidget {
  @override
  _ListAllUsersScreenState createState() => _ListAllUsersScreenState();
}

class _ListAllUsersScreenState extends State<ListAllUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserlistBloc, UserlistState>(
      builder: (context, state) {
        if (state is UserListInitialState) {
          BlocProvider.of<UserlistBloc>(context).add(FetchUserListEvent());
          return SizedBox.shrink();
        }

        if (state is UserListLoadingState) {
          return loadingScreen();
        }

        if (state is UserListEmptyState) {
          return Scaffold(
            appBar: AppBar(title: Text("Usuários Cadastrados")),
            drawer: CustomDrawer(),
            body: Container(
              child: Center(
                child: Text("Nenhum usuário cadastrado."),
              ),
            ),
          );
        }

        if (state is UserListLoadedState) {
          return Scaffold(
            appBar: AppBar(title: Text("Usuários cadastrados")),
            drawer: CustomDrawer(),
            body: ListView.builder(
              itemCount: state.usersList.length,
              itemBuilder: (context, index) {
                // return Text('${state.usersList[index].firstName}');
                return ListTile(
                  title: Text(
                      '${state.usersList[index].firstName} ${state.usersList[index].lastName}'),
                  subtitle: Text('${state.usersList[index].email}'),
                );
              },
            ),
          );
        }

        if (state is UserListErrorState) {
          return Scaffold(
            appBar: AppBar(title: Text("Usuários cadastrados")),
            drawer: CustomDrawer(),
            body: Container(
              child: Center(
                child: Text("Erro ao listar usuários, favor tente mais tarde"),
              ),
            ),
          );
        }
      },
    );
  }

  Widget loadingScreen() {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Checando Credenciais...')
          ],
        ),
      ),
    );
  }
}
