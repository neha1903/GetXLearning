import 'dart:collection';

import 'package:get/get.dart';
import 'package:todo_app/toDoGetX/model/task.dart';

class TaskController extends GetxController {
  List<Task> _taskList = [];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(_taskList);
  }

  void toggleCheckboxes(Task task) {
    task.toggleIsDone();
    update();
  }

  int get taskCount {
    return _taskList.length;
  }

  void insertTask(String newTask) {
    Task task = Task(name: newTask, isDone: false);
    _taskList.add(task);
    update();
  }

  void deleteTasks() {
    _taskList.clear();
    update();
  }

  void deleteSingleTask(Task task) {
    _taskList.remove(task);
    update();
  }
}
