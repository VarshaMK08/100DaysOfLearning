import 'dart:io';

void main() {
  print("=== Day 03: Conditions & Loops ===");

  // User input
  print("Enter a number:");
  int num = int.parse(stdin.readLineSync()!);

  // Check even/odd
  if (num % 2 == 0) {
    print("$num is Even");
  } else {
    print("$num is Odd");
  }

  print("\nPrinting numbers from 1 to $num:");
  for (int i = 1; i <= num; i++) {
    print(i);
  }

  print("\nSum of numbers from 1 to $num:");
  int sum = 0;
  int i = 1;
  while (i <= num) {
    sum += i;
    i++;
  }
  print("Total Sum = $sum");
}
