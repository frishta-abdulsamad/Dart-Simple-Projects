import 'dart:io';

void main() {
  num x, y;
  while (true) {
    stdout.write("Enter the first operand: ");
    var operand1 = stdin.readLineSync();

    if (operand1 == null || operand1.trim().isEmpty) {
      print("The first operand can't be empty. Please enter a number");
      continue;
    }

    try {
      x = num.parse(operand1);
      break;
    } catch (e) {
      print("Invalid input. Please enter a number");
    }
  }

  while (true) {
    stdout.write("Enter the second operand: ");
    var operand2 = stdin.readLineSync();

    if (operand2 == null || operand2.trim().isEmpty) {
      print("The second operand can't be empty. Please enter a number");
      continue;
    }

    try {
      y = num.parse(operand2);
      break;
    } catch (e) {
      print("Invalid operand. Please enter a number");
    }
  }

  String? operator;
  while (true) {
    stdout.write("Enter an operator '(+, -, *, or /)': ");
    operator = stdin.readLineSync();

    if (['+', '-', '*', '/'].contains(operator)) {
      break;
    } else {
      print("Error: Invalid operator. Please enter one of (+, -, *, /).");
    }
  }

  num result;
  switch (operator) {
    case ('+'):
      result = x + y;
      print("$x + $y = $result");
      break;
    case ('-'):
      result = x - y;
      print("$x - $y = $result");
      break;
    case ('*'):
      result = x * y;
      print("$x * $y = $result");
      break;
    case ('/'):
      if (y != 0) {
        result = x / y;
        print("$x / $y = $result");
      } else {
        print("Error: Devision by zero.");
      }
  }
}
