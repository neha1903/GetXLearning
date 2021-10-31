import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'demo.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "This is a Second Screen",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              /*
              *To close Snackbars, dialogs, bottomsheets, or anything
              * you would normally close with Navigator.pop(context);
              * Get.back();
              */
              Get.back();
            },
            child: const Text('Click to Go Back'),
          ),
          const SizedBox(
            height: 100.0,
          ),
          Text(
            "When We navigate Here from Get.off we can Use back to move to demo Screen",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            "When We navigate Here from Get.offAll we can not Use back because all the Screen in the stack are removed",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              /*
              * To go to the next screen and
              * cancel all previous routes
              * (useful in shopping carts, polls, and tests)
              * Get.offAll(NextScreen());
              */
              Get.offAll(const Demo());
            },
            child: const Text(
              'Click to move back to Demo Screen with Get.OffAll()',
            ),
          ),
        ],
      ),
    );
  }
}
