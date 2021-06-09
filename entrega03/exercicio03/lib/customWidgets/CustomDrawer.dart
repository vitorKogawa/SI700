import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:exercicio03/view/Login/bloc/login_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDrawer extends StatefulWidget {
  User user;

  CustomDrawer({this.user});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<LoginBloc>(context);

    signout() {
      final logoutEvent = SignOutEvent(id: widget.user.id);
      bloc.add(logoutEvent);
    }

    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(100.00),
              child: Icon(Icons.account_circle),
            ),
            accountName: Text(
              "${widget.user.firstName} ${widget.user.lastName}",
            ),
            accountEmail: Text("${widget.user.email}"),
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
            subtitle: Text('Usuários cadastrados no sistema'),
            onTap: () => Navigator.pushNamed(context, AppRoutes.USER_LIST),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair'),
            subtitle: Text('Logout'),
            onTap: () => signout(),
          )
        ],
      ),
    );
  }
}
