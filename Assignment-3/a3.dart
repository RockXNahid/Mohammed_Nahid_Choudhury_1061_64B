/* problem-1
void printName() {
  print("Nahid");
}

void main() {
  printName();
}
*/

/* problem-2
void printEvenNumbers(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void main() {
  printEvenNumbers(1, 20);
}
*/

/* problem-3
void greet(String name) {
  print("Hello, $name");
}

void main() {
  greet("John");
}
*/

/* problem-4
import 'dart:math';

void main() {
  const String characters =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$%";
  Random random = Random();
  String password = "";

  for (int i = 0; i < 10; i++) {
    password += characters[random.nextInt(characters.length)];
  }

  print(password);
}
*/

/* problem-5
double circleArea(double r) {
  return 3.1416 * r * r;
}

void main() {
  print(circleArea(5));
}
*/

/* problem-6
String reverseString(String text) {
  return text.split('').reversed.join();
}

void main() {
  print(reverseString("Dart"));
}
*/

/* problem-7
import 'dart:math';

double power(double number, int exponent) {
  return pow(number, exponent).toDouble();
}

void main() {
  print(power(5, 3));
}
*/

/* problem-8
double add(double a, double b) {
  return a + b;
}

void main() {
  print(add(10, 20));
}
*/

/* problem-9
double maxNumber(double a, double b, double c) {
  double max = a;

  if (b > max) {
    max = b;
  }

  if (c > max) {
    max = c;
  }

  return max;
}

void main() {
  print(maxNumber(10, 25, 15));
}
*/

/* problem-10
bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print(isEven(10));
}
*/

/* problem-11
void createUser(String name, int age, {bool isActive = true}) {
  print("Name: $name");
  print("Age: $age");
  print("Active: $isActive");
}

void main() {
  createUser("John", 25);
}
*/

/* problem-12
double calculateArea([double length = 1, double width = 1]) {
  return length * width;
}

void main() {
  print(calculateArea(5, 4));
}
*/