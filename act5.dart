import 'dart:io';

void main() {
  print("Enter your age (number):");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("No input provided. Please enter a valid number.");
    return;
  }

  int? age = int.tryParse(input.trim());

  if (age == null) {
    print("Invalid input. Please enter a whole number.");
    return;
  }

  print("Your age is ${age}");

  if (age >= 18) {
    print("Adult");
  } else {
    print("Minor");
  }
}