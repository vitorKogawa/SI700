import 'dart:io';

import 'package:exercicio03/database/scripts/create_user_table.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class UserController {
  static Future<List<Map<String, dynamic>>> allUsers() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "viraPagina.db";

    Database viraPaginaDatabase = await openDatabase(path, version: 1,
        onCreate: (Database database, int version) {
      database.execute(CREATE_TABLE_USUARIO);
    });

    return viraPaginaDatabase.query("usuario");
  }
}
