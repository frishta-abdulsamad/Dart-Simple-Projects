import 'dart:io';

void main() {
  stdout.write("Enter the file path: ");
  var path = stdin.readLineSync();

  if (path == null || path.trim().isEmpty) {
    print("❌ Error: File path is required.");
    return;
  }

  File file = File(path.trim());

  //Check existing file
  if (!file.existsSync()) {
    print("❌ Error: File not found at '$path'");
    return;
  }

  try {
    String text = file.readAsStringSync();
    // print(text);
    // print("_______________");
    List<String> paragraph = text
        .split(RegExp(r'\n\s*\n'))
        .where((p) => p.trim().isNotEmpty)
        .toList();
    print("➤  Paragraphs: ${paragraph.length}");
    List<String> sentence = text
        .split(RegExp(r'(?<=[.!?:])\s+'))
        .where((s) => s.trim().isNotEmpty)
        .toList();
    print("➤  Sentences: ${sentence.length}");
    List<String> word = text
        .split(RegExp(r'\s+'))
        .where((w) => w.trim().isNotEmpty)
        .toList();
    print("➤  Words: ${word.length}");
    List<String> character = text
        .split(RegExp(r''))
        .where((c) => c.trim().isNotEmpty)
        .toList();
    print("➤  Characters: ${character.length}");
    List<String> letters = character
        .where((l) => RegExp(r'[a-zA-Z]').hasMatch(l))
        .toList();
    print("➤  Letters: ${letters.length}");
    List<String> symbols = character
        .where((s) => RegExp(r'[^\w\s]', unicode: true).hasMatch(s))
        .toList();
    print("➤  Symbols: ${symbols.length}");
    List<String> digits = character
        .where((d) => RegExp(r'\d').hasMatch(d))
        .toList();
    print("➤  Digits: ${digits.length}");
    List<String> numbers = RegExp(
      r'\b\d{1,3}(?:,\d{3})*(?:\.\d+)?|\d+\.\d+\b',
    ).allMatches(text).map((match) => match.group(0)!).toList();
    print("➤  Numbers: ${numbers.length}");
  } catch (e) {
    print("❌ Error reading file: $e");
  }
}
