import 'dart:io';

void main() {
  // Creating a growable list
  List<String> tasks = [];

  print("Welcome to Day 5: Lists & Loops!");

  // Taking input 3 times
  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter Task $i: ");
    String? task = stdin.readLineSync();
    tasks.add(task!);
  }

  print("\n✅ Your Tasks:");

  // Displaying each task
  for (String item in tasks) {
    print("- $item");
  }

  // Showing number of tasks
  print("\nTotal tasks: ${tasks.length}");

  // Removing a task
  stdout.write("\nEnter a task to remove: ");
  String? removeTask = stdin.readLineSync();
  tasks.remove(removeTask);

  print("\n✅ Updated Task List:");
  for (String item in tasks) {
    print("- $item");
  }
}
