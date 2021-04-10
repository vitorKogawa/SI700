import 'package:flutter/material.dart';

class ThirdView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text("Loja de Livros",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.blueAccent)),
            Text(
              "Nosso projeto consiste em uma loja de livros, onde vamos desenvolve-lá consumindo uma API de terceiros e uma API que vai ser desenvolvida por nós mesmos com intuito de ser o intermédio entre a nossa aplicação e a base de dados que também iremos desenvolver.",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
