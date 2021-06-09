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
              border: Border.all(color: Colors.deepOrangeAccent, width: 3)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(49),
              child: Image.asset(
                'assets/images/enzo.jpg',
                width: 180,
              )),
        ),
        Text("Enzo Juniti Fujimoto",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.blueAccent)),
        Text("RA 233930",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                letterSpacing: 5,
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
          "\nEu faço graduação em Sistemas de Informação na Unicamp - Faculdade de Tecnologia.Tenho 20 anos e tenho um livro de poesia publicado, chamado 'depois que seja tarde antes que seja nunca'. Atualmente, faço IC e estou procurando um estágio. ",
          style: TextStyle(
              fontSize: 20,
              color: Colors.deepOrangeAccent,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
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
                  child: Text(
                    "\nOutras informações",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.blueAccent,
                    ),
                  ),
                ))
              ],
            ),
            Text(
              "\nGosto de escrever, escutar música, e cozinhar.",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrangeAccent,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    ),
  );
}
