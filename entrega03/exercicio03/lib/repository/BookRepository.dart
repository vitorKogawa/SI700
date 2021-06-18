import 'package:exercicio03/controller/BookController.dart';
import 'package:exercicio03/models/Book.dart';

class BookRepository {
  findAll() {
    BookController userController = new BookController();
    final books = userController.findAll();

    return books;                                                                                                             
  }

  findByID({Book book}) {}
}
