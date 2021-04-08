// Construção do Tab Bar - Barra de Navegação

// realizar os imports das outras pastas e arquivos

import 'package:flutter/material.dart';
import 'package:exercicio03/view/tela1/tela_01.dart';
import 'package:exercicio03/view/tela2/tela_02.dart';
import 'package:exercicio03/view/tela3/tela_03.dart';

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // é preciso retornar o MaterialApp em algum lugar
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: DefaultTabController(
          length: 3, // dividir a navegação em 3 partes
          initialIndex: 0,
          child: Scaffold(
            appBar: AppBar(
              title: Text("ApresentaçãoDuplasEProjeto"),
              bottom: TabBar(
                // definir as telas
                tabs: [
                  Tab(
                    child: Text('Enzo Fuji'),
                    icon: Icon(Icons.people),
                  ),
                  Tab(
                    child: Text('Vitor Roberto'),
                    icon: Icon(Icons.people),
                  ),
                  Tab(
                    child: Text('Project'),
                    icon: Icon(Icons.preview),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                FirstView(),
                SecondView(),
                ThirdView(),
              ],
            ),
          ),
        ));
  }
}
