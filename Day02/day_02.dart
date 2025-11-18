import 'dart:io';

void main() {
  print("=== Day 02: Dart Basics ===");

  // Taking user input
  print("Enter your name:");
  String? name = stdin.readLineSync();

  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  print("Enter product price:");
  double price = double.parse(stdin.readLineSync()!);

  // Using variables & operators
  double discountedPrice = price - 10;

  print("Name: $name");
  print("Age: $age");
  print("Original Price: $price");
  print("Price after discount: $discountedPrice");

  // List example
  List<String> fruits = ["Apple", "Banana", "Mango"];
  print("Fruits list: $fruits");

  // Map example
  Map<String, dynamic> student = {"name": name, "age": age};
  print("Student Map: $student");
}
