import 'dart:io';

import 'package:exercicio03/models/User.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:exercicio03/database/scripts/create_user_table.dart';

class DatabaseConnection {
  static DatabaseConnection instace = DatabaseConnection._createInstance();
  DatabaseConnection._createInstance();

  static Database _database;

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "atividade04.db";

    Database viraPaginaDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return viraPaginaDatabase;
  }

  _createDb(Database db, int newVersion) async {
    await db.execute(CREATE_TABLE_USUARIO);
  }

  //insere um novo usuário na base de dados.
  Future<int> store(User user) async {
    Database db = await this.database;
    int result = await db.insert(
      "usuario",
      user.toMap(),
    );
    return result;
  }

  //busca todos os usuários cadastrados na base de dados.
  Future<List<Map<String, dynamic>>> findAll() async {
    Database db = await this.database;
    return await db.query('usuario');
  }
}
