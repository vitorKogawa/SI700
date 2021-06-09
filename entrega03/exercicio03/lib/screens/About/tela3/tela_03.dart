import 'package:flutter/material.dart';

class ThirdView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  border: Border.all(color: Colors.deepOrangeAccent, width: 3)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image.asset(
                    'assets/images/book.png',
                    width: 250,
                  )),
            ),
            Text(
              " ",
            ),
            Text("Loja de Livros",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.blueAccent)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.yellow,
                      )),
                    )),
                  ],
                )
              ],
            ),
            Text(
              "\nNosso projeto consiste em uma loja de livros. De um modo geral, vamos criar um aplicativo que ofereça ao usuário a compra de livros. \n",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepOrangeAccent,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            Text("Informações no Servidor",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.blueAccent)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(0.0),
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.yellow,
                      )),
                    )),
                  ],
                )
              ],
            ),
            Text(
                "\nUsaremos uma API pronta, e faremos outra. Solicitaremos nome,telefone, cpf, usuário, e-mail e senha.",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.deepOrangeAccent)),
          ],
        ),
      ),
    );
  }
}
