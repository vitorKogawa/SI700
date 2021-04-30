import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(100.00),
                  child: Image.asset('assets/images/enzo.jpg')),
              accountName: Text('Nome do Usuário'),
              accountEmail: Text('usuario@email.com')),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Tela de início'),
            onTap: () => print(
                'clicou na Home.'), //aqui da pra direcionar para outra rota.
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Sobre'),
            subtitle: Text('Sobre o App'),
            onTap: () => print(
                'clicou em Sobre o App.'), //aqui da pra direcionar para outra rota.
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sair'),
            subtitle: Text('Logout'),
            onTap: () => {
              print('clicou em Logout.'),
              Navigator.pushReplacementNamed(context, '/')
            }, //aqui da pra direcionar para outra rota.
          )
        ],
      ),
    );
  }
}
