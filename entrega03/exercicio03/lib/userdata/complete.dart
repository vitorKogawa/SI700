// colocar outras coisas no Formulário, mas, por enquanto,
// é só; pensar depois com o Vitão

import 'package:flutter/material.dart';
import 'package:exercicio03/userdata/complete.dart';

class completeForm {
  var checkBoxValue = false;
  var switchValue1 = false;
  var switchValue = false;
  var radioValue = 1;

  set bottomSheetChoice(int bottomSheetChoice) {}

  doSomething() {
    print("CheckBox: $checkBoxValue");
    print("Switch: $switchValue");
    print("Radio: $radioValue");
    print("");
  }
}
