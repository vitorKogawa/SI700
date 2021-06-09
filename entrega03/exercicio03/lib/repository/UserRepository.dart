import 'package:exercicio03/controller/UserController.dart';
import 'package:exercicio03/models/User.dart';

class UserRepository {
  Future<User> sign(String email, String password) {
    UserController userController = new UserController();
    Future<User> user = userController.login(email: email, password: password);

    return user;
  }

  signout(String id) {
    UserController userController = new UserController();
    Future<bool> userExists = userController.userExists(id: id);

    return userExists;
  }

  store({User user}) {
    UserController userController = new UserController();
    Future<bool> result = userController.store(user: user);

    return result;
  }
}
