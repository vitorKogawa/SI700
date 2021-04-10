import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                'assets/images/perfil_vitor.jpg',
                width: 200,
              )),
        ),
        Text("Vitor Roberto Kogawa de Moraes",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.blueAccent)),
        Text(
          "Atualmente graduando em sistemas de informação na Faculdade de Tecnoogia da Unicamp. Tenho 21 anos e atualmente estou atuando como estagiário no departamento de engenharia de software da Avanade.",
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
}
