/* problem-1
void main() {
  print("Nahid");
}
*/

/* problem-2
void main() {
  print('Hello I am "John Doe"');
  print("Hello I'am \"John Doe\"");
}
*/

/* problem-3
void main() {
  const int number = 7;
  print(number);
}
*/

/* problem-4
void main() {
  double p = 1000;
  double t = 2;
  double r = 5;

  double simpleInterest = (p * t * r) / 100;

  print("Simple Interest: $simpleInterest");
}
*/

/* problem-5
import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  print("Square: ${number * number}");
}
*/

/* problem-6
import 'dart:io';

void main() {
  print("Enter first name:");
  String firstName = stdin.readLineSync()!;

  print("Enter last name:");
  String lastName = stdin.readLineSync()!;

  print("Full Name: $firstName $lastName");
}
*/

/* problem-7
import 'dart:io';

void main() {
  print("Enter first integer:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second integer:");
  int b = int.parse(stdin.readLineSync()!);

  print("Quotient: ${a ~/ b}");
  print("Remainder: ${a % b}");
}
*/

/* problem-8
import 'dart:io';

void main() {
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  int temp = a;
  a = b;
  b = temp;

  print("After swapping:");
  print("First number: $a");
  print("Second number: $b");
}
*/

/* problem-9
import 'dart:io';

void main() {
  print("Enter a string:");
  String text = stdin.readLineSync()!;

  String result = text.replaceAll(RegExp(r'\s+'), '');

  print(result);
}
*/

/* problem-10
import 'dart:io';

void main() {
  print("Enter a string:");
  String text = stdin.readLineSync()!;

  int number = int.parse(text);

  print(number);
}
*/

/* problem-11
import 'dart:io';

void main() {
  print("Enter total bill amount:");
  double bill = double.parse(stdin.readLineSync()!);

  print("Enter number of people:");
  int people = int.parse(stdin.readLineSync()!);

  double splitAmount = bill / people;

  print("Each person pays: $splitAmount");
}
*/

/* problem-12
void main() {
  double distance = 25;
  double speed = 40;

  double timeInHours = distance / speed;
  double timeInMinutes = timeInHours * 60;

  print("Time taken: $timeInMinutes minutes");
}
*/