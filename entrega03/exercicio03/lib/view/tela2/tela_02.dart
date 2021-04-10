import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            " ",
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
                border: Border.all(color: Colors.deepOrangeAccent, width: 3)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(49),
                child: Image.asset(
                  'assets/images/perfil_vitor.jpg',
                  width: 180,
                )),
          ),
          Text(
            " ",
          ),
          Text("Vitor Roberto Kogawa de Moraes",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: Colors.blueAccent)),
          Text("RA 245582",
              textAlign: TextAlign.justify,
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
            " ",
          ),
          Text(
            "Atualmente graduando em sistemas de informação na Faculdade de Tecnoogia da Unicamp. Tenho 21 anos e atualmente estou atuando como estagiário no departamento de engenharia de software da Avanade.",
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
}
