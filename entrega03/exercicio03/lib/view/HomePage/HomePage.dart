// import 'package:exercicio03/bloc/user_bloc.dart';
import 'package:exercicio03/customWidgets/CustomDrawer.dart';
import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/routes/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Estante de Livros')),
      drawer: CustomDrawer(),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Card(
                  child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.DETALHES_LIVRO),
                    child: Image.network(
                      'https://m.media-amazon.com/images/I/51Spxy9Xl0L.jpg',
                      width: 150,
                    ),
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Memórias Póstumas de Brás Cubas'),
                          ElevatedButton(
                              onPressed: () => print('clicou em comprar'),
                              child: Text('Comprar')),
                          ElevatedButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, AppRoutes.DETALHES_LIVRO),
                              child: Text('Favoritar')),
                        ],
                      )),
                ],
              )),
              Card(
                  child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://images-na.ssl-images-amazon.com/images/I/91MkcSmcf2L.jpg',
                    width: 150,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Memórias Póstumas de Brás Cubas'),
                          ElevatedButton(
                              onPressed: () => print('clicou em comprar'),
                              child: Text('Comprar')),
                          ElevatedButton(
                              onPressed: () => print('clicou em favoritar'),
                              child: Text('Favoritar')),
                        ],
                      )),
                ],
              )),
              Card(
                  child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://m.media-amazon.com/images/I/51EZZWkTECL.jpg',
                    width: 150,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Memórias Póstumas de Brás Cubas'),
                          ElevatedButton(
                              onPressed: () => print('clicou em comprar'),
                              child: Text('Comprar')),
                          ElevatedButton(
                              onPressed: () => print('clicou em favoritar'),
                              child: Text('Favoritar')),
                        ],
                      )),
                ],
              )),
              Card(
                  child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://images-na.ssl-images-amazon.com/images/I/91tO3AZhkcL.jpg',
                    width: 150,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Memórias Póstumas de Brás Cubas'),
                          ElevatedButton(
                              onPressed: () => print('clicou em comprar'),
                              child: Text('Comprar')),
                          ElevatedButton(
                              onPressed: () => print('clicou em favoritar'),
                              child: Text('Favoritar')),
                        ],
                      )),
                ],
              )),
              Card(
                  child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://images-na.ssl-images-amazon.com/images/I/91MkcSmcf2L.jpg',
                    width: 150,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Memórias Póstumas de Brás Cubas'),
                          ElevatedButton(
                              onPressed: () => print('clicou em comprar'),
                              child: Text('Comprar')),
                          ElevatedButton(
                              onPressed: () => print('clicou em favoritar'),
                              child: Text('Favoritar')),
                        ],
                      )),
                ],
              )),
              Card(
                  child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://images-na.ssl-images-amazon.com/images/I/71Hx-WJHWFL.jpg',
                    width: 150,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Memórias Póstumas de Brás Cubas'),
                          ElevatedButton(
                              onPressed: () => print('clicou em comprar'),
                              child: Text('Comprar')),
                          ElevatedButton(
                              onPressed: () => print('clicou em favoritar'),
                              child: Text('Favoritar')),
                        ],
                      )),
                ],
              ))
            ],
          )),
    );
  }
}
