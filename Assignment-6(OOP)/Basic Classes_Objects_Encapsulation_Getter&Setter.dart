/* problem-1
import 'dart:io';

class Student {
  String name;
  int id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);

  void display() {
    print("Name: $name");
    print("ID: $id");
    print("CGPA: $cgpa");
  }
}

void main() {
  print("Enter name:");
  String name = stdin.readLineSync()!;

  print("Enter ID:");
  int id = int.parse(stdin.readLineSync()!);

  print("Enter CGPA:");
  double cgpa = double.parse(stdin.readLineSync()!);

  Student student = Student(name, id, cgpa);
  student.display();
}
*/

/* problem-2
import 'dart:io';

class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double area() {
    return length * width;
  }

  double perimeter() {
    return 2 * (length + width);
  }
}

void main() {
  print("Enter length:");
  double length = double.parse(stdin.readLineSync()!);

  print("Enter width:");
  double width = double.parse(stdin.readLineSync()!);

  Rectangle rectangle = Rectangle(length, width);

  print("Area: ${rectangle.area()}");
  print("Perimeter: ${rectangle.perimeter()}");
}
*/

/* problem-3
import 'dart:io';

class Book {
  String title;
  String subtitle;
  String author;

  Book(this.title, this.subtitle, this.author);

  void display() {
    print("Title: $title");
    print("Subtitle: $subtitle");
    print("Author: $author");
  }
}

void main() {
  print("Enter title:");
  String title = stdin.readLineSync()!;

  print("Enter subtitle:");
  String subtitle = stdin.readLineSync()!;

  print("Enter author:");
  String author = stdin.readLineSync()!;

  Book book = Book(title, subtitle, author);
  book.display();
}
*/

/* problem-4
class Car {
  Car.manual() {
    print("Manual car");
  }

  Car.automatic() {
    print("Automatic car");
  }
}

void main() {
  Car.manual();
  Car.automatic();
}
*/

/* problem-5
import 'dart:io';

class Customer {
  final String name;
  final int id;

  const Customer(this.name, this.id);

  void display() {
    print("Name: $name");
    print("ID: $id");
  }
}

void main() {
  print("Enter name:");
  String name = stdin.readLineSync()!;

  print("Enter ID:");
  int id = int.parse(stdin.readLineSync()!);

  Customer customer = Customer(name, id);
  customer.display();
}
*/

/* problem-6
import 'dart:io';

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient balance");
    }
  }
}

void main() {
  print("Enter initial balance:");
  double balance = double.parse(stdin.readLineSync()!);

  BankAccount account = BankAccount(balance);

  print("Enter deposit amount:");
  double deposit = double.parse(stdin.readLineSync()!);
  account.deposit(deposit);

  print("Enter withdraw amount:");
  double withdraw = double.parse(stdin.readLineSync()!);
  account.withdraw(withdraw);

  print("Balance: ${account.balance}");
}
*/

/* problem-7
class MathHelper {
  static int addition(int a, int b) {
    return a + b;
  }

  static int multiplication(int a, int b) {
    return a * b;
  }
}

void main() {
  print(MathHelper.addition(10, 5));
  print(MathHelper.multiplication(10, 5));
}
*/

/* problem-8
import 'dart:io';

class Employee {
  String name;
  String designation;
  double salary;

  Employee(this.name, this.designation, this.salary);

  void display() {
    print("Name: $name");
    print("Designation: $designation");
    print("Salary: $salary");
    print("");
  }
}

void main() {
  List<Employee> employees = [];

  for (int i = 1; i <= 3; i++) {
    print("Enter employee $i name:");
    String name = stdin.readLineSync()!;

    print("Enter designation:");
    String designation = stdin.readLineSync()!;

    print("Enter salary:");
    double salary = double.parse(stdin.readLineSync()!);

    employees.add(Employee(name, designation, salary));
  }

  for (Employee employee in employees) {
    employee.display();
  }
}
*/

/* problem-9
import 'dart:io';

class Temperature {
  double _temp = 0;

  set temp(double celsius) {
    _temp = celsius;
  }

  double get temp {
    return (_temp * 9 / 5) + 32;
  }
}

void main() {
  print("Enter temperature in Celsius:");
  double celsius = double.parse(stdin.readLineSync()!);

  Temperature temperature = Temperature();
  temperature.temp = celsius;

  print("Temperature in Fahrenheit: ${temperature.temp}");
}
*/

/* problem-10
import 'dart:io';

class BankAccount {
  double _balance = 0;

  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Balance cannot be negative");
    }
  }

  double get balance {
    return _balance;
  }
}

void main() {
  print("Enter balance:");
  double amount = double.parse(stdin.readLineSync()!);

  BankAccount account = BankAccount();
  account.balance = amount;

  print("Balance: ${account.balance}");
}
*/