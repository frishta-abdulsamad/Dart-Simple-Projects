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

    try {
      String? input = stdin.readLineSync();
      if (input == null) {
        print("Input can't be null. Try again");
        continue;
      }

      guess = int.parse(input);

      if (guess < 1 || guess > 100) {
        print("The number must be between 1 to 100");
        continue;
      }
    } catch (e) {
      print("Invalid input! Please enter a valid number between 1 and 100.");
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

      stdout.write("Do you want to play again? Y/N");
      String? again = stdin.readLineSync();
      if (again?.toUpperCase() == "Y") {
        guessCounter = 0;
        number = r.nextInt(100) + 1;
        continue;
      } else {
        print("Thanks for playing! 👋");
        break;
      }
    }
  }
}
