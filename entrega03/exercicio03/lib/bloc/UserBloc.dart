import 'dart:async';

import 'package:exercicio03/database/Database.dart';
import 'package:exercicio03/models/User.dart';

class UserBloc {
  final _userBlocStream = StreamController<int>();

  Stream<int> get output => _userBlocStream.stream;

  void store(User user) async {
    _userBlocStream.sink.add(await DatabaseConnection.instace.store(user));
  }

  closeStream() {
    _userBlocStream.close();
  }
}
