import 'dart:io';

List<String> tasks = [];

void addTask() {
  stdout.write("Enter task: ");
  String? task = stdin.readLineSync();
  tasks.add(task!);
  print("✅ Task added!");
}

void viewTasks() {
  print("\nYour Tasks:");
  for (String t in tasks) {
    print("- $t");
  }
}

bool searchTask(String task) {
  return tasks.contains(task);
}

void deleteTask() {
  stdout.write("Enter task to delete: ");
  String? task = stdin.readLineSync();
  tasks.remove(task);
  print("✅ Task deleted (if existed)");
}

void main() {
  while (true) {
    print("\n==== Function-Based Task Manager ====");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Search Task");
    print("4. Delete Task");
    print("5. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        addTask();
        break;

      case "2":
        viewTasks();
        break;

      case "3":
        stdout.write("Enter task to search: ");
        String? search = stdin.readLineSync();
        if (searchTask(search!)) {
          print("✅ Found!");
        } else {
          print("❌ Not found!");
        }
        break;

      case "4":
        deleteTask();
        break;

      case "5":
        print("👋 Exiting...");
        return;

      default:
        print("❌ Invalid choice");
    }
  }
}
