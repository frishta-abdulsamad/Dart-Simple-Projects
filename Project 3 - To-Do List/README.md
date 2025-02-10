# 📝 Simple To-Do List

## Description:

This is a simple To-Do List application written in Dart. The app allows users to add, view, and delete tasks, which are stored in a text file (tasks.txt). Each time the application is run, the task list is reset, meaning any previously saved tasks will be lost, and the file will start empty.


## Features
*   Add tasks
*   View all tasks
*   Delete a task by its index
*   Tasks saved to `tasks.txt` (reset on each run)

## Example Usage
Please enter a command (add/delete/view/exit): add
Enter a task to add: prayer
Task added.
Please enter a command (add/delete/view/exit): add
Enter a task to add: Quran
Task added.
Please enter a command (add/delete/view/exit): add
Enter a task to add: gym
Task added.
Please enter a command (add/delete/view/exit): add
Enter a task to add: reading
Task added.
Please enter a command (add/delete/view/exit): view
Task List:
1. prayer 
2. Quran  
3. gym    
4. reading
_______________
Please enter a command (add/delete/view/exit): delete
Enter index of task to delete: 3
Task deleted.
Please enter a command (add/delete/view/exit): view
Task List:
1. prayer
2. Quran
3. reading
_______________
Please enter a command (add/delete/view/exit): exit
Goodbye