import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/demo_of_get_management_components/demo.dart';
import 'package:todo_app/toDoGetX/screens/task_screen.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //const CircularProgressIndicator(),
          OutlinedButton(
            onPressed: () {
              Get.to(const Demo());
            },
            child: const Text(
              'Move to GetX Demo',
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.changeTheme(ThemeData.light());
              Get.to(const TasksScreen());
            },
            child: const Text(
              'Move to ToDo(Theme Light)',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
