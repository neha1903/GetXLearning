import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/toDoGetX/controllers/task_controller.dart';
import 'package:todo_app/toDoGetX/model/task.dart';

import 'task_tile.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({Key? key}) : super(key: key);

  /* Adding Task Using Using GetBuilder */
  @override
  Widget build(BuildContext context) {
    final TaskController taskController = Get.put(TaskController());
    return GetBuilder<TaskController>(builder: (_) {
      return ListView.builder(
        itemBuilder: (context, index) {
          Task taskOb = taskController.taskList[index];
          return TaskTile(
            text: taskOb.name,
            checkboxState: taskOb.isDone,
            checkboxCallback: (value) {
              taskController.toggleCheckboxes(taskOb);
            },
            onLongPressCallback: () {
              taskController.deleteSingleTask(taskOb);
            },
          );
        },
        itemCount: taskController.taskCount,
      );
    });
  }
}
