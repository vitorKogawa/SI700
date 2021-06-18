import 'package:exercicio03/models/User.dart';
import 'package:exercicio03/screens/Book/List/BookList.dart';
import 'package:exercicio03/widget/core/CustomDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String message;
  User user;

  HomeScreen({this.message, this.user});

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
      body: ListBooksScreen(),
    );
  }
}
