/* problem-11
import 'dart:io';

class Person {
  void displayInfo() {
    print("Person information");
  }
}

class Teacher extends Person {
  @override
  void displayInfo() {
    print("Teacher information");
  }
}

class Student extends Person {
  @override
  void displayInfo() {
    print("Student information");
  }
}

void main() {
  print("Enter teacher name:");
  String teacherName = stdin.readLineSync()!;

  print("Enter student name:");
  String studentName = stdin.readLineSync()!;

  Teacher teacher = Teacher();
  Student student = Student();

  print("Teacher: $teacherName");
  teacher.displayInfo();

  print("Student: $studentName");
  student.displayInfo();
}
*/

/* problem-12
import 'dart:io';

class Person {
  String name;

  Person(this.name);
}

class Employee extends Person {
  double salary;

  Employee(String name, this.salary) : super(name);

  void display() {
    print("Name: $name");
    print("Salary: $salary");
  }
}

void main() {
  print("Enter employee name:");
  String name = stdin.readLineSync()!;

  print("Enter salary:");
  double salary = double.parse(stdin.readLineSync()!);

  Employee employee = Employee(name, salary);
  employee.display();
}
*/

/* problem-13
import 'dart:io';
import 'dart:math';

class Shape {
  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

void main() {
  print("Enter rectangle length:");
  double length = double.parse(stdin.readLineSync()!);

  print("Enter rectangle width:");
  double width = double.parse(stdin.readLineSync()!);

  print("Enter circle radius:");
  double radius = double.parse(stdin.readLineSync()!);

  Rectangle rectangle = Rectangle(length, width);
  Circle circle = Circle(radius);

  print("Rectangle area: ${rectangle.area()}");
  print("Circle area: ${circle.area()}");
}
*/

/* problem-14
import 'dart:io';

class Notification {
  String displayNotification() {
    return "Notification message";
  }
}

class EmailNotification extends Notification {
  @override
  String displayNotification() {
    return "Email notification";
  }
}

class SMSNotification extends Notification {
  @override
  String displayNotification() {
    return "SMS notification";
  }
}

void main() {
  print("Enter email notification:");
  String email = stdin.readLineSync()!;

  print("Enter SMS notification:");
  String sms = stdin.readLineSync()!;

  EmailNotification emailNotification = EmailNotification();
  SMSNotification smsNotification = SMSNotification();

  print("$email: ${emailNotification.displayNotification()}");
  print("$sms: ${smsNotification.displayNotification()}");
}
*/

/* problem-15
import 'dart:io';

abstract class Shape {
  double calculateArea();
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  print("Enter side:");
  double side = double.parse(stdin.readLineSync()!);

  Square square = Square(side);
  print("Area: ${square.calculateArea()}");
}
*/

/* problem-16
import 'dart:io';

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is turned on");
  }

  @override
  void turnOff() {
    print("Fan is turned off");
  }
}

void main() {
  print("Enter 1 to turn on the fan:");
  int choice = int.parse(stdin.readLineSync()!);

  Fan fan = Fan();

  if (choice == 1) {
    fan.turnOn();
  } else {
    fan.turnOff();
  }
}
*/

/* problem-17
import 'dart:io';

class Playable {
  void play() {}
}

class Football extends Playable {
  @override
  void play() {
    print("Playing Football");
  }
}

class Cricket extends Playable {
  @override
  void play() {
    print("Playing Cricket");
  }
}

void main() {
  print("Enter 1 for Football or 2 for Cricket:");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    Football football = Football();
    football.play();
  } else {
    Cricket cricket = Cricket();
    cricket.play();
  }
}
*/

/* problem-18
import 'dart:io';

class Flyable {
  void fly() {
    print("Duck can fly");
  }
}

class Swimmable {
  void swim() {
    print("Duck can swim");
  }
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck can fly");
  }

  @override
  void swim() {
    print("Duck can swim");
  }
}

void main() {
  Duck duck = Duck();

  print("Enter 1 to fly or 2 to swim:");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    duck.fly();
  } else {
    duck.swim();
  }
}
*/

/* problem-19
import 'dart:io';

abstract class Payment {
  void pay(double amount);
}

class CashPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using cash");
  }
}

class CardPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using card");
  }
}

void main() {
  print("Enter payment amount:");
  double amount = double.parse(stdin.readLineSync()!);

  print("Enter 1 for Cash or 2 for Card:");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    CashPayment payment = CashPayment();
    payment.pay(amount);
  } else {
    CardPayment payment = CardPayment();
    payment.pay(amount);
  }
}
*/