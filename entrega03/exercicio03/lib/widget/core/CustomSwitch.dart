import 'package:exercicio03/controller/DarkModeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: DarkModeController.instance.isDarkTheme,
        onChanged: (value) => DarkModeController.instance.changeTheme());
  }
}