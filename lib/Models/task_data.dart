import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/Models/task.dart';
import 'Dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Reading Book'),
    Task(name: 'Praying')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
  
  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    print(newTaskTitle);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}
