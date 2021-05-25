import 'package:exercicio03/models/User.dart';
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
              accountName: Text('Enzo Juniti'),
              accountEmail: Text('enzo@email.com')),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            subtitle: Text('Tela de início'),
            onTap: () => Navigator.pushReplacementNamed(context, '/home'),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Sobre'),
            subtitle: Text('Sobre o App'),
            onTap: () => Navigator.pushReplacementNamed(context, '/about'),
          ),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              subtitle: Text('Logout'),
              onTap: () => Navigator.pushReplacementNamed(context, '/'))
        ],
      ),
    );
  }
}
