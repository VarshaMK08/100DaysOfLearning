class Task {
  String title;
  String description;
  bool isCompleted;

  // Constructor
  Task(this.title, this.description, this.isCompleted);

  // Method to display details
  void showTask() {
    print("Title: $title");
    print("Description: $description");
    print("Completed: $isCompleted");
  }

  // Method to mark completed
  void markCompleted() {
    isCompleted = true;
    print("Task marked as completed!");
  }
}

void main() {
  // Creating object
  Task t1 = Task("Study Dart", "Complete Day 8 OOP concepts", false);

  t1.showTask(); // Print details

  t1.markCompleted(); // Mark completed

  t1.showTask(); // Print details again
}
