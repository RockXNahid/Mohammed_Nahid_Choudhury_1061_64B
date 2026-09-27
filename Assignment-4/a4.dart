/* problem-1
void main() {
  List<String> names = ["John", "David", "Alex", "Robert"];

  for (String name in names) {
    print(name);
  }
}
*/

/* problem-2
void main() {
  Set<String> fruits = {"Apple", "Mango", "Banana", "Orange"};

  for (String fruit in fruits) {
    print(fruit);
  }
}
*/

/* problem-3
import 'dart:io';

void main() {
  print("Enter number of expenses:");
  int n = int.parse(stdin.readLineSync()!);

  List<double> expenses = [];

  for (int i = 0; i < n; i++) {
    print("Enter expense:");
    expenses.add(double.parse(stdin.readLineSync()!));
  }

  double total = 0;

  for (double expense in expenses) {
    total += expense;
  }

  print("Total: $total");
}
*/

/* problem-4
void main() {
  List<String> days = [];

  days.add("Saturday");
  days.add("Sunday");
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");

  for (String day in days) {
    print(day);
  }
}
*/

/* problem-5
void main() {
  List<String> friends = [
    "Arif",
    "Rahim",
    "Sakib",
    "Anik",
    "Hasan",
    "Rafi",
    "Tanvir"
  ];

  List<String> result =
      friends.where((name) => name.toLowerCase().startsWith("a")).toList();

  print(result);
}
*/

/* problem-6
void main() {
  Map<String, dynamic> person = {
    "name": "John",
    "address": "Dhaka",
    "age": 25,
    "country": "Bangladesh"
  };

  person["country"] = "Canada";

  person.forEach((key, value) {
    print("$key: $value");
  });
}
*/

/* problem-7
void main() {
  Map<String, String> data = {
    "name": "John",
    "phone": "123456789",
    "city": "Dhaka",
    "email": "john@gmail.com"
  };

  data.keys
      .where((key) => key.length == 4)
      .forEach((key) {
    print(key);
  });
}
*/

/* problem-8
import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter task:");
      String task = stdin.readLineSync()!;
      tasks.add(task);
    } else if (choice == 2) {
      print("Enter task number:");
      int index = int.parse(stdin.readLineSync()!);
      tasks.removeAt(index - 1);
    } else if (choice == 3) {
      for (int i = 0; i < tasks.length; i++) {
        print("${i + 1}. ${tasks[i]}");
      }
    } else if (choice == 4) {
      break;
    }
  }
}
*/