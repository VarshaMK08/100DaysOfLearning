import 'dart:io';

// Function with no parameters and no return
void showWelcome() {
  print("Welcome to Dart Day 4!");
}

// Function with parameters
void printFullName(String first, String last) {
  print("Your full name is: $first $last");
}

// Function returning a value
int findArea(int length, int width) {
  return length * width;
}

void main() {
  showWelcome();

  // Taking user input
  stdout.write("Enter first name: ");
  String? firstName = stdin.readLineSync();

  stdout.write("Enter last name: ");
  String? lastName = stdin.readLineSync();

  printFullName(firstName!, lastName!);

  // Area calculation (static values for now)
  int area = findArea(10, 5);
  print("The area is: $area");
}
