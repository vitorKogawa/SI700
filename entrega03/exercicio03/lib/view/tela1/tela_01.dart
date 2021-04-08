import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return enzoScreen();
  }
}

Widget enzoScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(55),
              border: Border.all(color: Colors.black, width: 6)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(49),
              child: Image.asset(
                'assets/images/enzo.jpg',
                width: 200,
              )),
        ),
        Text("Enzo Juniti Fujimoto",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.blueAccent)),
        Text(
          "Eu faço graduação em Sistemas de Informação na Unicamp - Faculdade de Tecnologia.Tenho 20 anos e tenho um livro de poesia publicado. Atualmente, estou procurando um estágio. ",
          style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
