import 'dart:io';

void main() {
  stdout.write("Enter temperature: ");
  var input = num.parse(stdin.readLineSync()!);
  stdout.write("You want to convert it to Celsius or Fahrenheit? C/F: ");
  String? measurement = stdin.readLineSync();

  if (measurement != null){
    measurement = measurement.trim().toUpperCase();
    if (measurement == 'C') {
      num celsius = (5 / 9) * (input - 32);
      print("${input}°F = ${celsius}°C");
    } else if (measurement == 'F') {
      num fahrenhiet = (9 / 5) * input + 32;
      print("${input}°C = ${fahrenhiet}°F");
    } else {
      print("Invalid input. Please choose C or F.");
    }
  }
}
