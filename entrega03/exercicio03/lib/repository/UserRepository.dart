import 'package:exercicio03/controller/UserController.dart';
import 'package:exercicio03/models/User.dart';

class UserRepository {
  Future<User> sign(String email, String password) {
    UserController userController = new UserController();
    Future<User> user = userController.login(email: email, password: password);

    return user;
  }

  store({User user}) {
    UserController userController = new UserController();
    Future<bool> result = userController.store(user: user);

    return result;
  }

  findAll() {
    UserController userController = new UserController();
    final users = userController.findAll();

    return users;                                                                                                             
  }
}
