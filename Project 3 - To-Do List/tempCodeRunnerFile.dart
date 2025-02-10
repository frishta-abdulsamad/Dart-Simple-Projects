import 'dart:io';

void main() {
  List<String> tasks = [];
  var file = File("tasks.txt");

  file.writeAsStringSync(''); 

  while (true) {
    stdout.write("Please enter a command (add/delete/view/exit): ");
    String? command = stdin.readLineSync();
    if (command == null || command.trim().isEmpty) {
      print(
          "Error: empty command.");
    } else {
      command = command.trim().toLowerCase();
      switch (command) {
        case ('add'):
          stdout.write("Enter a task to add: ");
          var task = stdin.readLineSync();
          if (task == null || task.trim().isEmpty) {
            print("No task added.");
          } else {
            tasks.add(task);
            file.writeAsStringSync(tasks.join('\n'));
            print("Task added.");
          }
          break;
        case ('view'):
          if (file.existsSync()) {
             tasks = file.readAsLinesSync();
           }

          if (tasks.isEmpty) {
            print("There are no tasks to view");
          } else {
            print("Task List:");
            for (int i = 0; i < tasks.length; i++) {
              print("${i + 1}. ${tasks[i]}");
            }
            print("_______________");
          }
          break;
        case ('delete'):
          if (file.existsSync()) {
             tasks = file.readAsLinesSync();
           }

          stdout.write('Enter index of task to delete: ');
          var index = int.tryParse(stdin.readLineSync() ?? '');
          if (index == null) {
            print('Invalid index');
            break;
          }
          if (index > 0 && index <= tasks.length) {
            index = index - 1;
            tasks.removeAt(index);
            file.writeAsStringSync(tasks.join('\n'));
            print('Task deleted.');
          } else {
            print('There is no task with index of ${index}');
          }
          break;
        case ('exit'):
          print("Goodbye");
          return;
        default:
          print("Invalid Command");
      }
    }
  }
}