import 'package:exercicio03/screens/About/tela1/tela_01.dart';
import 'package:exercicio03/screens/About/tela2/tela_02.dart';
import 'package:exercicio03/screens/About/tela3/tela_03.dart';
import 'package:exercicio03/widget/core/CustomDrawer.dart';
import 'package:exercicio03/widget/core/CustomSwitch.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          actions: [CustomSwitch()],
          title: Text("Apresentação Duplas e Projeto"),
          bottom: TabBar(
            isScrollable: false,
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
