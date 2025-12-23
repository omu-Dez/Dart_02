import 'library.dart';
import 'book.dart';

void main() {
Book book1 = Book('Sherlock Holmes', 'Arthur Conan Doyle');
Book book2 = Book.withRating('Game of Thrones', 'George R. R. Martin', 9.3);
Book book3 = Book('House of the Dragon', 'George R. R. Martin');
book3.rating = 8.5;
Book book4 = Book.withRating('The Simpsons', 'Matthew Abram Groening', 999.999);

  Library cityLib = Library("City Library");
  cityLib.addBook(book1);
  cityLib.addBook(book2);
  cityLib.addBook(book3);
  cityLib.addBook(book4);
  cityLib.showBooks();

  print("Total books in library: ${cityLib.booksCount}");
}