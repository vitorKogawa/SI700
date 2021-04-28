import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  //singleton
  static AppController instance = AppController();

  bool isDarkTheme = false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
