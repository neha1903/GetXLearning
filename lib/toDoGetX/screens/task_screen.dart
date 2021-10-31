import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/toDoGetX/controllers/task_controller.dart';
import 'package:todo_app/toDoGetX/screens/add_task_sheet.dart';
import 'package:todo_app/toDoGetX/widgets/task_list_view.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  /*
  * Reason for not using SnackBar from GetX is because
  * I am getting the Proper UI from showModalBottomSheet
  * and that is Good For Work Done for now
  */
  Widget buildBottomSheet(BuildContext context) {
    return const AddTaskSheet();
  }

  Widget addTaskSheet() {
    return const AddTaskSheet();
  }

  void buildBottomSheetWithGetX() {
    Get.bottomSheet(
      addTaskSheet(),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TaskController taskController = Get.put(TaskController());

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //buildBottomSheetWithGetX();
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: buildBottomSheet,
          );
        },
        backgroundColor: Colors.lightBlueAccent.shade100,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60.0, left: 20.0, bottom: 60.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    taskController.deleteTasks();
                    // Delete All task
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent[100],
                      size: 45.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 10.0,
                  ),
                  /* Using GetXBuilder
                   */
                  child: GetBuilder<TaskController>(builder: (_) {
                    return Text(
                      '${taskController.taskCount} task',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: const TaskListView(),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
