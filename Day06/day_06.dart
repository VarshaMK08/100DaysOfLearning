import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n==== Task Manager ====");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Search Task");
    print("4. Update Task");
    print("5. Delete Task");
    print("6. Sort Tasks");
    print("7. Clear All Tasks");
    print("8. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("Enter task: ");
        String? task = stdin.readLineSync();
        tasks.add(task!);
        print("✅ Task added!");
        break;

      case "2":
        print("\nYour Tasks:");
        for (String t in tasks) {
          print("- $t");
        }
        break;

      case "3":
        stdout.write("Search task: ");
        String? search = stdin.readLineSync();
        if (tasks.contains(search)) {
          print("✅ Found!");
        } else {
          print("❌ Not found!");
        }
        break;

      case "4":
        stdout.write("Enter task to update: ");
        String? oldTask = stdin.readLineSync();
        int index = tasks.indexOf(oldTask!);

        if (index != -1) {
          stdout.write("Enter new task: ");
          String? newTask = stdin.readLineSync();
          tasks[index] = newTask!;
          print("✅ Task updated!");
        } else {
          print("❌ Task not found!");
        }
        break;

      case "5":
        stdout.write("Enter task to delete: ");
        String? del = stdin.readLineSync();
        tasks.remove(del);
        print("✅ Task deleted (if existed)");
        break;

      case "6":
        tasks.sort();
        print("✅ Tasks sorted!");
        break;

      case "7":
        tasks.clear();
        print("✅ All tasks cleared!");
        break;

      case "8":
        print("👋 Exiting...");
        return;

      default:
        print("❌ Invalid choice, try again");
    }
  }
}
