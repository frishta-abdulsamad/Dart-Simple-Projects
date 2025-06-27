import 'dart:io';
import 'dart:math';

void main() {
  final r = Random();
  var number = r.nextInt(100) + 1;
  var guess;
  int guessCounter = 0;
  while (true) {
    stdout.write(
      "I'm thinking of a number between 1 and 100. Can you guess what it is? ",
    );
    guess = int.parse(stdin.readLineSync()!);

    if (guess < 1 || guess > 100) {
      print("the number must be between 1 to 100.");
      continue;
    }

    if (guess < number) {
      print("Guess higher");
      guessCounter++;
    } else if (guess > number) {
      print("Guess lower");
      guessCounter++;
    } else {
      print("Correct.");
      guessCounter++;
      print("You tried ${guessCounter} times");

      stdout.write("Do you want to do the game again? Y/N");
      String? again = stdin.readLineSync();
      if (again?.toUpperCase() == "Y") {
        guessCounter = 0;
        number = r.nextInt(100) + 1;
        continue;
      } else {
        break;
      }
    }
  }
}
