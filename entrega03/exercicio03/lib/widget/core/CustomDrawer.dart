import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:exercicio03/screens/Login/bloc/login_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(100.00),
                child: Image.asset('assets/images/enzo.jpg')),
            accountName: Text('Fulano 1'),
            accountEmail: Text('fulano1@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Tela de início'),
            onTap: () => Navigator.pushNamed(context, AppRoutes.HOME),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Sobre'),
            subtitle: Text('Sobre o App'),
            onTap: () => Navigator.pushNamed(context, AppRoutes.ABOUT),
          ),
          ListTile(
            leading: Icon(Icons.supervised_user_circle_sharp),
            title: Text('Usuários'),
            subtitle: Text('Usuários Cadastrados'),
            onTap: () => {
              // BlocProvider.of<UserlistBloc>(context).add(FetchUserListEvent()),
              Navigator.of(context).pushNamed(AppRoutes.USER_LIST),
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair'),
            subtitle: Text('Logout'),
            onTap: () => {
              BlocProvider.of<LoginBloc>(context).add(LoginSignOutEvent()),
            },
          ),
        ],
      ),
    );
  }
}
