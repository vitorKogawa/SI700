import 'package:exercicio03/database/Database.dart';
import 'package:exercicio03/models/User.dart';

class UserRepository {
  var dataProvider = DatabaseConnection.instace;

  Future<int> store(User user) async => await dataProvider.store(user);
}
