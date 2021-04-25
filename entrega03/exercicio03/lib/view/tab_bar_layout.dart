// Construção do Tab Bar - Barra de Navegação

// realizar os imports das outras pastas e arquivos

import 'package:flutter/material.dart';
import 'package:exercicio03/view/tela1/tela_01.dart';
import 'package:exercicio03/view/tela2/tela_02.dart';
import 'package:exercicio03/view/tela3/tela_03.dart';
import 'package:exercicio03/view/tela4/tela_04.dart';

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // é preciso retornar o MaterialApp em algum lugar
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(
          length: 4, // dividir a navegação em 3 partes
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Apresentação Duplas e Projeto"),
              bottom: TabBar(
                isScrollable: false,
                // definir as telas
                tabs: [
                  Tab(
                    child: Text('Enzo'),
                    icon: Icon(Icons.person),
                  ),
                  Tab(
                    child: Text('Vitor'),
                    icon: Icon(Icons.person),
                  ),
                  Tab(
                    child: Text('About'),
                    icon: Icon(Icons.bookmark),
                  ),
                  Tab(
                    child: Text('User'),
                    icon: Icon(Icons.alternate_email_rounded),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                FirstView(),
                SecondView(),
                ThirdView(),
                FourthView(),
              ],
            ),
          ),
        ));
  }
}
