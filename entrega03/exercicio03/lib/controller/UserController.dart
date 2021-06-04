import 'package:exercicio03/services/Api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class UserController {
  login({String email, String password}) async {
    print(email);
    print(password);
    // Map<String, String> creadentials = {"email": email, "password": password};
    // Map<String, String> headers = {"Content-type": "application/json"};

    // var url = Uri.parse("${Api.BASE_URL}/shared/login");
    // var response = await http.post(url, headers: headers, body: creadentials);
    // if (response.statusCode == 200) {
    //   var jsonResponse =
    //       convert.jsonDecode(response.body) as Map<String, dynamic>;
    //   var itemCount = jsonResponse['totalItems'];
    //   print('Number of books about http: $itemCount.');
    // } else {
    //   print('Request failed with status: ${response.statusCode}.');
    // }
  }
}
