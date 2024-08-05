import 'dart:io';

import 'listbook.dart';

class Book {
  Book();
  late String _tittle, _author, _gener, ISBN, _description;
  late int _puplication_year;
  late bool _status;
  Book.named(
      this._tittle, this._author, this._gener, this.ISBN, this._description);
  String get tittle => _tittle;
  String get author => _author;
  String get gener => _gener;
  set tittle(String tittle1) {
    tittle = tittle1;
  }

  String tostring() {
    return 'BOOK:(tittle:$tittle, author:$author, gener:$gener,descreption:$_description)';
  }

  set author(String author1) {
    author = author1;
  }

  set gener(String gener1) {
    gener = gener1;
  }

  void addBook(Book book) {
    if (listbook.any((b) => b.ISBN == book.ISBN)) {
      print("This book with isbn ${book.ISBN} ia already exists");
    } else {
      listbook.add(book);
      print("book is added sucessfuly!");
    }
  }

  Book? searchbook(String tittle) {
    for (var book in listbook) {
      if (book._tittle.toLowerCase() == tittle.toLowerCase()) {
        return book;
      }
    }
    return null;
  }

  void display() {
    print("the menue of books :");
    listbook.forEach((element) {
      print(element.tittle);
    });
  }
}

void main(List<String> args) {
  Book b = Book.named(
      "To Kill a Mkingbird",
      "Harper Lee",
      "Southern Gothic fiction",
      "9780060935467",
      "A young girl witnesses the racial injustice of the American South through her father\''s defense of a wrongly accused Black man.");

  b.addBook(b);
  Book library = Book();
  String tittleToSearch = stdin.readLineSync()!;
  Book? foundBook = library.searchbook(tittleToSearch);
  if (foundBook != null) {
    print("Tittle: ${foundBook._tittle}");
    print("author: ${foundBook._author}");
    print("gener: ${foundBook._gener}");
    print("ISBN: ${foundBook.ISBN}");
    print("descreption : ${foundBook._description}");
  } else {
    print('Book not found');
  }
  b.display();
}
