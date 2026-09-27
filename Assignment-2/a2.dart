/* problem-1
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }
}
*/

/* problem-2
import 'dart:io';

void main() {
  String character = stdin.readLineSync()!;

  if ("aeiouAEIOU".contains(character)) {
    print("Vowel");
  } else {
    print("Consonant");
  }
}
*/

/* problem-3
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("Positive");
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}
*/

/* problem-4
void main() {
  for (int i = 1; i <= 100; i++) {
    print("Nahid");
  }
}
*/

/* problem-5
import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;

  for (int i = 1; i <= number; i++) {
    sum = sum + i;
  }

  print(sum);
}
*/

/* problem-6
void main() {
  for (int i = 1; i <= 10; i++) {
    print("5 x $i = ${5 * i}");
  }
}
*/

/* problem-7
void main() {
  for (int i = 1; i <= 9; i++) {
    print("Table of $i");

    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
  }
}
*/

/* problem-8
import 'dart:io';

void main() {
  double num1 = double.parse(stdin.readLineSync()!);
  String operator = stdin.readLineSync()!;
  double num2 = double.parse(stdin.readLineSync()!);

  if (operator == "+") {
    print(num1 + num2);
  } else if (operator == "-") {
    print(num1 - num2);
  } else if (operator == "*") {
    print(num1 * num2);
  } else if (operator == "/") {
    print(num1 / num2);
  }
}
*/

/* problem-9
void main() {
  for (int i = 1; i <= 100; i++) {
    if (i != 41) {
      print(i);
    }
  }
}
*/