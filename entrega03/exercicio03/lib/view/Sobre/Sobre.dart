// Construção do Tab Bar - Barra de Navegação

// realizar os imports das outras pastas e arquivos

import 'package:exercicio03/customWidgets/CustomDrawer.dart';
import 'package:exercicio03/customWidgets/CustomSwitch.dart';
// import 'package:exercicio03/view/login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:exercicio03/view/tela1/tela_01.dart';
import 'package:exercicio03/view/tela2/tela_02.dart';
import 'package:exercicio03/view/tela3/tela_03.dart';
// import 'package:exercicio03/controller/AppController.dart';

class SobreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // dividir a navegação em 3 partes
      initialIndex: 0,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          actions: [CustomSwitch()],
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
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [FirstView(), SecondView(), ThirdView()],
        ),
      ),
    );
  }
}
