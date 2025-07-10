import 'dart:math';
import 'dart:io';

void main() {
  stdout.write("How long do you want the password to be? ");
  var input = stdin.readLineSync();
  var length = int.tryParse(input ?? '12') ?? 12;
  if (input == null || int.tryParse(input) == null) {
  print("Invalid input. Defaulting to length 12.");
  }
  if (length < 4 || length > 128) {
  print("Password length should be between 4 and 128. Using 12 instead.");
  length = 12;
  }
  var password = generatePassword(length);
  print("Generated Passowrd: $password");
}

String generatePassword(int length) {
  final random = Random.secure();

  // Generate a list of random ASCII codes and convert to characters.
  final codeUnits = List<int>.generate(length, (index) {
    // ASCII range 33–126 includes symbols, digits, uppercase & lowercase letters.
    return random.nextInt(94) + 33;
  });

  return String.fromCharCodes(codeUnits);
}
