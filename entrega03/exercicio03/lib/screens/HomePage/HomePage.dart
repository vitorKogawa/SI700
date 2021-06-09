import 'package:exercicio03/widget/core/CustomDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomeScreen> {
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
                        Navigator.pushReplacementNamed(context, '/see-book'),
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
                              onPressed: () => Navigator.pushReplacementNamed(context, '/see-book'),
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
