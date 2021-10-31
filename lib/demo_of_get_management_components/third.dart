import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/demo_of_get_management_components/display_person.dart';
import 'package:todo_app/demo_of_get_management_components/person.dart';

/*
* passing Person class Data to
* new screen
* */
Person person = Person();

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    person = Person();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                decoration: const InputDecoration(
                  filled: true,
                  hintText: "Enter the Custom Text here....",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  person.setRandomText(value);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                decoration: const InputDecoration(
                  filled: true,
                  hintText: "Enter First Name here....",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  person.setFirstName(value);
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ),
                decoration: const InputDecoration(
                  filled: true,
                  hintText: "Enter Last Name here....",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  person.setLastName(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () async {
                  var data =
                      await Get.to(const DisplayPage(), arguments: person);
                  print(data);
                },
                child: const Text(
                  'Pass Person Data to Next Screen',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
