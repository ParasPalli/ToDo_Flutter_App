import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Working'),
    Task(name: 'Eating'),
    Task(name: 'Writing'),
  ];

  // Get Tasks List...
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // Get Task Count...
  int get taskCount {
    return _tasks.length;
  }

  // Add Task...
  void addTask(String title) {
    _tasks.add(
      Task(name: title),
    );
    notifyListeners();
  }

  // Delete Task...
  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void updateCheckBox(Task task) {
    task.toggleCheckBox();
    notifyListeners();
  }
}
