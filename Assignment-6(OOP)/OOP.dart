/* problem-20
import 'dart:io';

String toCapitalized(String text) {
  if (text.isEmpty) {
    return text;
  }

  return text[0].toUpperCase() + text.substring(1);
}

void main() {
  print("Enter a word:");
  String text = stdin.readLineSync()!;

  print(toCapitalized(text));
}
*/

/* problem-21
import 'dart:io';

enum OrderStatus {
  pending,
  shipped,
  delivered
}

void main() {
  print("Enter order status:");
  String input = stdin.readLineSync()!.toLowerCase();

  OrderStatus status = OrderStatus.pending;

  if (input == "shipped") {
    status = OrderStatus.shipped;
  } else if (input == "delivered") {
    status = OrderStatus.delivered;
  }

  switch (status) {
    case OrderStatus.pending:
      print("Order is pending.");
      break;
    case OrderStatus.shipped:
      print("Order has been shipped.");
      break;
    case OrderStatus.delivered:
      print("Order has been delivered.");
      break;
  }
}
*/

/* problem-22
import 'dart:io';

mixin LoggerMixin {
  void logMessage(String message) {
    print("Log: $message");
  }
}

class User with LoggerMixin {
  String name;

  User(this.name);
}

class Product with LoggerMixin {
  String name;

  Product(this.name);
}

void main() {
  print("Enter user name:");
  String userName = stdin.readLineSync()!;

  print("Enter product name:");
  String productName = stdin.readLineSync()!;

  User user = User(userName);
  Product product = Product(productName);

  user.logMessage("User created: ${user.name}");
  product.logMessage("Product created: ${product.name}");
}
*/

/* problem-23
import 'dart:io';

class Document {
  String title;

  Document(this.title);
}

mixin Printable on Document {
  void display() {
    print("Document: $title");
  }
}

class Invoice extends Document with Printable {
  Invoice(String title) : super(title);
}

class Report extends Document with Printable {
  Report(String title) : super(title);
}

void main() {
  print("Enter invoice title:");
  String invoiceTitle = stdin.readLineSync()!;

  print("Enter report title:");
  String reportTitle = stdin.readLineSync()!;

  Invoice invoice = Invoice(invoiceTitle);
  Report report = Report(reportTitle);

  invoice.display();
  report.display();
}
*/

/* problem-24
import 'dart:io';

class Box<T> {
  T value;

  Box(this.value);

  void display() {
    print(value);
  }
}

void main() {
  print("Enter a value:");
  String value = stdin.readLineSync()!;

  Box<String> box = Box<String>(value);
  box.display();
}
*/

/* problem-25
import 'dart:io';

bool isEqual<T>(T a, T b) {
  return a == b;
}

void main() {
  print("Enter first value:");
  String a = stdin.readLineSync()!;

  print("Enter second value:");
  String b = stdin.readLineSync()!;

  print(isEqual<String>(a, b));
}
*/

/* problem-26
import 'dart:io';

T findLargest<T extends num>(T a, T b) {
  return a > b ? a : b;
}

void main() {
  print("Enter first number:");
  double a = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double b = double.parse(stdin.readLineSync()!);

  print(findLargest<double>(a, b));
}
*/

/* problem-27
import 'dart:io';

class Company {
  String name;

  Company(this.name);

  double calculateSalary() {
    return 0;
  }
}

class Manager extends Company {
  double salary;

  Manager(String name, this.salary) : super(name);

  @override
  double calculateSalary() {
    return salary + 10000;
  }
}

class Developer extends Company {
  double salary;

  Developer(String name, this.salary) : super(name);

  @override
  double calculateSalary() {
    return salary + 5000;
  }
}

void main() {
  print("Enter manager name:");
  String managerName = stdin.readLineSync()!;

  print("Enter manager salary:");
  double managerSalary = double.parse(stdin.readLineSync()!);

  print("Enter developer name:");
  String developerName = stdin.readLineSync()!;

  print("Enter developer salary:");
  double developerSalary = double.parse(stdin.readLineSync()!);

  Manager manager = Manager(managerName, managerSalary);
  Developer developer = Developer(developerName, developerSalary);

  print("Manager salary: ${manager.calculateSalary()}");
  print("Developer salary: ${developer.calculateSalary()}");
}
*/

/* problem-28
import 'dart:io';

class Guest {
  String name;

  Guest(this.name);
}

class Room {
  int roomNumber;
  double price;
  bool isAvailable;

  Room(this.roomNumber, this.price, this.isAvailable);
}

class Reservation {
  Guest guest;
  Room room;

  Reservation(this.guest, this.room);

  void reserve() {
    if (room.isAvailable) {
      room.isAvailable = false;
      print("${guest.name} reserved room ${room.roomNumber}");
    } else {
      print("Room is not available");
    }
  }
}

void main() {
  print("Enter guest name:");
  String name = stdin.readLineSync()!;

  print("Enter room number:");
  int roomNumber = int.parse(stdin.readLineSync()!);

  print("Enter room price:");
  double price = double.parse(stdin.readLineSync()!);

  Guest guest = Guest(name);
  Room room = Room(roomNumber, price, true);
  Reservation reservation = Reservation(guest, room);

  reservation.reserve();
}
*/

/* problem-29
import 'dart:io';

class Book {
  String title;
  bool _isIssued = false;

  Book(this.title);

  bool get isIssued {
    return _isIssued;
  }

  void issue() {
    if (!_isIssued) {
      _isIssued = true;
      print("$title has been issued.");
    } else {
      print("$title is already issued.");
    }
  }

  void returnBook() {
    _isIssued = false;
    print("$title has been returned.");
  }
}

class Member {
  String name;

  Member(this.name);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void issueBook(String title) {
    for (Book book in books) {
      if (book.title == title) {
        book.issue();
        return;
      }
    }
    print("Book not found.");
  }

  void returnBook(String title) {
    for (Book book in books) {
      if (book.title == title) {
        book.returnBook();
        return;
      }
    }
    print("Book not found.");
  }
}

void main() {
  print("Enter book title:");
  String title = stdin.readLineSync()!;

  print("Enter member name:");
  String memberName = stdin.readLineSync()!;

  Book book = Book(title);
  Member member = Member(memberName);
  Library library = Library();

  library.addBook(book);

  print("1. Issue Book");
  print("2. Return Book");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    library.issueBook(title);
  } else {
    library.returnBook(title);
  }
}
*/

/* problem-30
import 'dart:io';

abstract class Person {
  String name;

  Person(this.name);

  void displayInfo();
}

class Student extends Person {
  int id;

  Student(String name, this.id) : super(name);

  @override
  void displayInfo() {
    print("Student: $name");
    print("ID: $id");
  }
}

class Course {
  String name;

  Course(this.name);
}

class Enrollment {
  Student student;
  Course course;

  Enrollment(this.student, this.course);

  void display() {
    student.displayInfo();
    print("Course: ${course.name}");
  }
}

void main() {
  print("Enter student name:");
  String name = stdin.readLineSync()!;

  print("Enter student ID:");
  int id = int.parse(stdin.readLineSync()!);

  print("Enter course name:");
  String courseName = stdin.readLineSync()!;

  Student student = Student(name, id);
  Course course = Course(courseName);
  Enrollment enrollment = Enrollment(student, course);

  enrollment.display();
}
*/