import 'package:exercicio03/models/User.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UserController {
  Future<User> login({String email, String password}) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String uri = "https://si700backend.herokuapp.com/shared/login";

    Response response = await http.post(
      Uri.parse(uri),
      headers: headers,
      body: convert.jsonEncode(
        <String, String>{"email": email, "password": password},
      ),
    );

    if (response.statusCode != 200) {
      return User(
        id: null,
        firstName: null,
        lastName: null,
        email: null,
        password: null,
      );
    } else {
      Map<String, dynamic> user = convert.jsonDecode(response.body);

      return User(
        id: user['user']['id'],
        firstName: user['user']['firstName'],
        lastName: user['user']['lastName'],
        email: user['user']['email'],
      );
    }
  }

  Future<bool> userExists({String id}) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String uri = "https://si700backend.herokuapp.com/private/user/findByID/$id";

    Response response = await http.get(Uri.parse(uri), headers: headers);

    if (response.statusCode != 200) {
      return false;
    } else {
      return true;
    }
  }

  /// Função que cadastra um usuário na base de dados
  Future<bool> store({User user}) async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String uri = "https://si700backend.herokuapp.com/shared/user/store";

    Response response = await http.post(
      Uri.parse(uri),
      headers: headers,
      body: convert.jsonEncode(
        <String, dynamic>{
          "firstName": user.firstName,
          "lastName": user.lastName,
          "email": user.email,
          "password": user.password
        },
      ),
    );

    if (response.statusCode != 200) {
      return false;
    } else {
      return true;
    }
  }

  /// Função que lista todos os usuários cadastrados na base dados
  Future<List<User>> findAll() async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String uri = "https://si700backend.herokuapp.com/private/user/findAll";

    Response response = await http.get(
      Uri.parse(uri),
      headers: headers,
    );

    List<dynamic> body = convert.jsonDecode(response.body);
    List<User> users = body.map((dynamic user) => User.fromJson(user)).toList();

    return users;
  }
}
