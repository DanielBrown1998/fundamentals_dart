//bin/fundamentals.dart

import 'dart:io';

void main() {
  print('Hello, World!');
  print("Welcome to Dart Language");
  print('What is your name?');
  String? name = stdin.readLineSync();
  print('What is your age?');
  String? age = stdin.readLineSync();
  int? ageInt = int.parse(age!);
  print('Hello, $name! You are $ageInt years old.');
}
