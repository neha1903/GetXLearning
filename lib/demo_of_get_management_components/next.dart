import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second.dart';

class Next extends StatelessWidget {
  const Next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "This is a Next Screen",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              /*
              *To go to the next screen and no option to go
              * back to the previous screen
              * but can go back to the previous to previous Screen
              * removes only last screen from the stack
              * (for use in SplashScreens, login screens, etc.)
              * Get.off(NextScreen());
              */
              Get.off(const Second());
            },
            child: const Text('Move to Next Screen with Get.off()'),
          ),
          OutlinedButton(
            onPressed: () {
              /*
              * To go to the next screen and
              * cancel all previous routes
              * (useful in shopping carts, polls, and tests)
              * Get.offAll(NextScreen());
              */
              Get.offAll(const Second());
            },
            child: const Text('Move To Next Screen with Get.offAll()'),
          ),
        ],
      ),
    );
  }
}
