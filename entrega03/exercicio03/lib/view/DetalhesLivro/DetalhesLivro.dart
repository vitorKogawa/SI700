import 'package:exercicio03/customWidgets/CustomDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetalhesLivroWidget extends StatefulWidget {
  @override
  State<DetalhesLivroWidget> createState() {
    return DetalhesLivroState();
  }
}

class DetalhesLivroState extends State<DetalhesLivroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Detalhes do livro')),
        drawer: CustomDrawer(),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/perfil_vitor.jpg', width: 300),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(fontSize: 20)),
                  ElevatedButton(
                      onPressed: () => print('clicou em comprar o livro'),
                      child: Text('Comprar')),
                  ElevatedButton(
                      onPressed: () => print('clicou em favoritar o livro'),
                      child: Text('Favoritar')),
                ],
              ),
            )));
  }
}
