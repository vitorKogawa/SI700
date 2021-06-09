import 'package:exercicio03/view/CadastroUsuario/CadastroUsuario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum Genders { masculino, feminino, outro }

class RadioListTileButtonGenderWidget extends StatefulWidget {
  @override
  State<RadioListTileButtonGenderWidget> createState() {
    return RadioListTileButtonGenderState();
  }
}

class RadioListTileButtonGenderState
    extends State<RadioListTileButtonGenderWidget> {
  Genders _gender = Genders.masculino;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      RadioListTile<Genders>(
          title: Text('Masculino'),
          value: Genders.masculino,
          groupValue: _gender,
          onChanged: (Genders value) {
            setState(() {
              _gender = value;
            });
          }),
      RadioListTile<Genders>(
          title: Text('Feminino'),
          value: Genders.feminino,
          groupValue: _gender,
          onChanged: (Genders value) {
            setState(() {
              _gender = value;
            });
          }),
      RadioListTile(
          title: Text('Outro'),
          value: Genders.outro,
          groupValue: _gender,
          onChanged: (Genders value) {
            setState(() {
              _gender = value;
            });
          })
    ]);
  }
}
