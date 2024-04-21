//Simple dart Calculator
import 'dart:io';

void main() {
  //Program Beginning
  print("Welcome to the Simple Dart Calculator!");
  print('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('\nSelect operation:\n' +
      '1.Addition\n' +
      '2.Subtraction\n' +
      '3.Multiplication\n' +
      '4.Division');
  String oper = stdin.readLineSync()!;

  //Switch statement to check the kind of operation.
  switch (oper) {
    case '1':
      var sum = num1 + num2;
      print('The sum is: $sum');
      break;
    case '2':
      var diff = num1 - num2;
      print('The difference is: $diff');
      break;
    case '3':
      var prod = num1 * num2;
      print('The product is: $prod');
      break;
    case '4':
      if (num2 == 0) {
        print('Error! Division by zero is not allowed.');
      } else {
        var quotient = num1 ~/ num2;
        var remainder = num1 % num2;
        print('Quotient: $quotient \nRemainder: $remainder');
      }
      break;
    default:
      print('Invalid Operation! Please enter a valid option.');
  }
}
