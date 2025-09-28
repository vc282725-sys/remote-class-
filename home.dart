import 'dart:io';

void main() {
  print('Enter first number:');
  String? firstInput = stdin.readLineSync();
  print('Enter second number:');
  String? secondInput = stdin.readLineSync();

  if (firstInput != null && secondInput != null) {
    int num1 = int.parse(firstInput);
    int num2 = int.parse(secondInput);
    int sum = num1 + num2;
    print('Sum is: $sum');
  } else {
    print('Invalid input.');
  }
}
