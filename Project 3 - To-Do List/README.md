To-Do List (Dart Console Application)

Description:

This is a simple command-line To-Do List application written in Dart. It allows users to add, delete, and view tasks, with all tasks being stored in a text file (tasks.txt). The program provides a persistent task list that remains saved even after the program exits.

Features

Add Task: Users can add new tasks to the list.

View Tasks: Users can view the list of tasks saved in tasks.txt.

Delete Task: Users can remove a task by entering its index.

Persistent Storage: Tasks are stored in a file, so they remain available even after restarting the program.

Requirements

Dart SDK installed on your system.

Installation & Usage

1. Clone or Download the Repository

git clone <repository-url>
cd <project-folder>

2. Run the Program

dart main.dart

Commands Available:

add: Add a new task.

view: View all tasks.

delete: Remove a task using its index.

exit: Exit the program.

Example Usage
Please enter a command (add/delete/view/exit): add
Enter a task to add: prayer
Task added.

Please enter a command (add/delete/view/exit): add
Enter a task to add: Quran
Task added.

Please enter a command (add/delete/view/exit): add
Enter a task to add: reading
Task added.

Please enter a command (add/delete/view/exit): add
Enter a task to add: gym
Task added.

Please enter a command (add/delete/view/exit): view
Task List:
1. prayer
2. Quran
3. reading
4. gym
5. study
_______________

Please enter a command (add/delete/view/exit): delete
Enter index of task to delete: 3
Task deleted.

Please enter a command (add/delete/view/exit): exit
Goodbye!