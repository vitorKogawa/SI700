import 'package:exercicio03/models/Book.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:http/http.dart';

class BookController {
  Future<List<Map<String, dynamic>>> findAll() async {
    Map<String, String> headers = {"Content-type": "application/json"};
    String uri =
        "https://www.googleapis.com/books/v1/volumes/?q=tolkien&projection=full&key=AIzaSyCAzwqRaW2ML-2bmoxVkUbkRnkt3yTMoVs";

    Response response = await http.get(
      Uri.parse(uri),
      headers: headers,
    );

    // print(response.statusCode);

    final body = convert.jsonDecode(response.body)['items'];

    final books = body.map(
      (dynamic element) => Book(
        id: element['id'],
        title: element['volumeInfo']['title'],
        subtitle: element['volumeInfo']['subtitle'],
        authors: element['volumeInfo']['authors'],
        publisher: element['volumeInfo']['publisher'],
        publisherDate: element['volumeInfo']['publisherDate'],
        description: element['volumeInfo']['description'],
        pageCount: int.parse(element['volumeInfo']['pageCount']),
        imageLinks: element['volumeInfo']['imageLinks'],
        language: element['volumeInfo']['language'],
        averageRating: double.parse(element['volumeInfo']['averageRating']),

      ),
    );

    print(books);
    // print(body[0]['id']);
    // print(body[0]['volumeInfo']['title']);
    // print(body[0]['volumeInfo']['subtitle'] != null
    //     ? body[0]['volumeInfo']['subtitle']
    //     : "Sem subtítulo");
    // print(body[0]['volumeInfo']['authors']);
    // print(body[0]['volumeInfo']['publisher']);
    // print(body[0]['volumeInfo']['publishedDate']);
    // print(body[0]['volumeInfo']['description']);
    // print(body[0]['volumeInfo']['pageCount']);
    // print(body[0]['volumeInfo']['imageLinks']);
    // print(body[0]['volumeInfo']['language']);
    // print(body[0]['volumeInfo']['averageRating'] != null
    //     ? body[0]['volumeInfo']['averageRating']
    //     : "Sem média de nota");

    // print(body[0]['saleInfo']['listPrice']['amount']);
    // print(body[0]['saleInfo']['buyLink']);

    // List<Book> books;

    // body.map((e) => print(e['title']));

    // // List<Book> users = body.map((dynamic user) => Book.fromJson(user)).toList();
    // print(body);
    // return response.body;

    // return users;
  }

  Future<Book> findByID({Book book}) async {
    final String id = "B3uFDwAAQBAJ";
    Map<String, String> headers = {"Content-type": "application/json"};
    String uri =
        "https://www.googleapis.com/books/v1/volumes/$id?projection=full&key=AIzaSyCAzwqRaW2ML-2bmoxVkUbkRnkt3yTMoVs";

    Response response = await http.get(
      Uri.parse(uri),
      headers: headers,
    );

    print(response.statusCode);
    // print(response.body);

    final body = convert.jsonDecode(response.body)['items'];
    print(body[0]['id']);
    print(body[0]['volumeInfo']['title']);
    print(body[0]['volumeInfo']['subtitle']);
    print(body[0]['volumeInfo']['authors']);
    print(body[0]['volumeInfo']['publisher']);
    print(body[0]['volumeInfo']['publishedDate']);
    print(body[0]['volumeInfo']['description']);
    print(body[0]['volumeInfo']['pageCount']);
    print(body[0]['volumeInfo']['imageLinks']);
    print(body[0]['volumeInfo']['language']);
    print(body[0]['volumeInfo']['averageRating']);

    print(body[0]['saleInfo']['listPrice']['amount']);
    print(body[0]['saleInfo']['buyLink']);
  }
}
