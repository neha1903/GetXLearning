import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/demo_of_get_management_components/person.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Person person = Get.arguments;
    void _onBackPressed() {
      Get.back(result: "Success");
    }

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "First Name: " + person.getFirstName(),
                textAlign: TextAlign.center,
              ),
              Text(
                "Last Name: " + person.getLastName(),
                textAlign: TextAlign.center,
              ),
              Text(
                "Random: " + person.getSomeRandomText(),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    _onBackPressed();
                  },
                  child: const Text(
                    'Go Back',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
