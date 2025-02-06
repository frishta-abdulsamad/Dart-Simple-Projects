import 'dart:io';

void main() {
  num input;

  while (true) {
    stdout.write("Enter temperature: ");
    String? tempInput = stdin.readLineSync();

    if (tempInput == null || tempInput.trim().isEmpty) {
      print("Error: Temperature cannot be empty. Please enter a valid number.");
      continue;
    }

    try {
      input = num.parse(tempInput);
      break;
    } catch (e) {
      print("Error: Invalid input. Please enter a numerical value.");
    }
  }

  String measurement;

  while (true) {
    stdout.write("You want to convert it to Celsius or Fahrenheit? C/F: ");
    measurement = stdin.readLineSync()?.trim().toUpperCase() ?? '';

    if (measurement == 'C' || measurement == 'F') {
      break;
    } else {
      print("Error: Invalid choice. Please enter 'C' for Celsius or 'F' for Fahrenheit.");
    }
  }

  // Perform conversion
  if (measurement == 'C') {
    num celsius = (5 / 9) * (input - 32);
    print("${input}°F = ${celsius}°C");
  } else {
    num fahrenheit = (9 / 5) * input + 32;
    print("${input}°C = ${fahrenheit}°F");
  }
}
