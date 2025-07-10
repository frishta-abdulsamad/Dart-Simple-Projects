import 'dart:math';
import 'dart:io';

void main() {
  stdout.write("How long do you want the password to be? ");
  var input = stdin.readLineSync();
  var length = int.tryParse(input ?? '12') ?? 12;
  var password = generatePassword(length);
  print(password);
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
