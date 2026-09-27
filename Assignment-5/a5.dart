/* problem-1
import 'dart:io';

void main() async {
  File file = File("hello.txt");
  await file.writeAsString("Nahid");
}
*/

/* problem-2
import 'dart:io';

void main() async {
  File file = File("hello.txt");
  await file.writeAsString("\nFriend: John", mode: FileMode.append);
}
*/

/* problem-3
import 'dart:io';

void main() {
  Directory directory = Directory.current;
  print(directory.path);
}
*/

/* problem-4
import 'dart:io';

void main() async {
  File file = File("hello.txt");
  File copy = await file.copy("hello_copy.txt");

  print(copy.path);
}
*/

/* problem-5
import 'dart:io';

void main() async {
  for (int i = 1; i <= 100; i++) {
    File file = File("file_$i.txt");
    await file.writeAsString("This is file $i");
  }
}
*/

/* problem-6
import 'dart:io';

void main() async {
  File file = File("hello_copy.txt");

  if (await file.exists()) {
    await file.delete();
    print("File deleted");
  } else {
    print("File does not exist");
  }
}
*/

/* problem-7
import 'dart:io';

void main() async {
  File file = File("students.csv");

  await file.writeAsString(
    "Name,Age,Address\n"
    "John,20,Dhaka\n"
    "David,22,Sylhet\n"
    "Alex,21,Chittagong\n",
  );

  String data = await file.readAsString();
  print(data);
}
*/