import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';



class TaskData extends ChangeNotifier{
  // ListView.builder ===>HELP TO ADD INFINITE TASKS DYNAMICALLY
  List<Task> tasks=[
    
    Task(name: 'Take Walk'),
    Task(name: 'Buy Car'),
    Task(name: 'Study Dart'),

  ];
// METHOD

    void addTask(String newTaskTitle){
      tasks.add(Task(name: newTaskTitle));
      notifyListeners();
    }

    void updateTask(Task task){
      task.doneChange();
      notifyListeners();
    }

    void deleteTask(Task task){
      tasks.remove(task);
      notifyListeners();
    }


}