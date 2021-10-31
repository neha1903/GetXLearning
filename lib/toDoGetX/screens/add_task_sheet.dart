import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/toDoGetX/controllers/task_controller.dart';

class AddTaskSheet extends GetWidget<TaskController> {
  const AddTaskSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final TaskController taskController = Get.find(TaskController());
    String newTask = "";
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: const Color(0xff757575),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent.shade100,
                ),
              ),
              TextField(
                autofocus: true,
                onChanged: (value) {
                  newTask = value;
                },
                decoration: const InputDecoration(
                  hintText: "type here... ",
                  contentPadding: EdgeInsets.all(5.0),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if (newTask.length > 0) {
                    controller.insertTask(newTask);
                    Get.back();
                  }
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent.shade100,
                  padding: const EdgeInsets.all(15.0),
                ),
              )
            ],
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}
