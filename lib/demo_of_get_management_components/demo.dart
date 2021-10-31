import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/change_theme_controller.dart';
import 'package:todo_app/demo_of_get_management_components/third.dart';

import 'next.dart';
import 'second.dart';

/*
* Section Covered
* Snackbar, Dialog, and BottomSheet
* navigating within Screen
* Passing data Between Screen
* Change Theme
*/
// Get X theme Change using Reactive state Management

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChangeThemeController c = Get.put(ChangeThemeController());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //const CircularProgressIndicator(),
          OutlinedButton(
            onPressed: () {
              c.switchTheme();
            },
            child: Obx(() => Text(
                  c.darkMode == 0
                      ? "Change to Dark Theme"
                      : "Change to Light Theme",
                  textAlign: TextAlign.center,
                )),
          ),
          OutlinedButton(
            onPressed: () {
              Get.snackbar(
                "title",
                "Message",
                snackPosition: SnackPosition.BOTTOM,
                colorText: Colors.black,
                backgroundColor: Colors.lightBlue[100],
              );
            },
            child: const Text(
              'Show SnackBar',
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.defaultDialog(
                titleStyle: const TextStyle(color: Colors.black),
                title: "Alert",
                cancelTextColor: Colors.black,
                content: const Text(
                  "This is a dialog Content",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                backgroundColor: Colors.blue[100],
                textCancel: "NO",
                textConfirm: "Yes",
                confirmTextColor: Get.isDarkMode ? Colors.black : Colors.white,
                onCancel: () {
                  if (!kReleaseMode) {
                    print("onCancel");
                  }
                },
                onConfirm: () {
                  if (!kReleaseMode) {
                    print("onConfirm");
                  }
                  /*
                  *To close Snackbars, dialogs, bottomsheets, or anything
                  * you would normally close with Navigator.pop(context);
                  * Get.back();
                  */
                  Get.back();
                },
                barrierDismissible: true,
              );
            },
            child: const Text(
              'Show Dialog',
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.bottomSheet(
                const SizedBox(
                  height: 300.0,
                  child: Center(
                    child: Text(
                      "This is a Bottom Sheet Text",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                backgroundColor: Colors.lightBlue,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              );
            },
            child: const Text(
              'Show BottomSheet',
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              /*
              * Navigate to new screen with name.
              * Get.to(NextScreen());
              */
              Get.to(const Second());

              /*
              * To go to the next screen and
              * cancel all previous routes
              * (useful in shopping carts, polls, and tests)
              * * Get.offAll(NextScreen());
              */
              //Get.offAll(const Second());
            },
            child: const Text(
              'Move To Second Screen with Get.To()',
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              /*
              * Navigate to new screen with name.
              * Get.to(NextScreen());
              */
              Get.to(const Next());
            },
            child: const Text(
              'Move To Next Screen with Get.To()',
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Get.to(const Third());
            },
            child: const Text(
              'Move To Third Screen For Passing Data between Activity Demo',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
