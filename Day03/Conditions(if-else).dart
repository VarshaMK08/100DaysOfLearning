import 'dart:io';

void main() {
  //if condition
  print("Enter the age: ");
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 18) {
    print("You are an adult");
  }

  //if-else
  print("Enter the Marks: ");
  int marks = int.parse(stdin.readLineSync()!);
  if (marks >= 35) {
    print("Pass");
  } else {
    print("Fail");
  }

  //if-else if-else
  if (marks >= 90) {
    print("Grade A");
  } else if (marks >= 75) {
    print("Grade B");
  } else if (marks >= 50) {
    print("Grade C");
  } else {
    print("Grade D");
  }
}
