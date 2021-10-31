import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeThemeController extends GetxController {
  var darkMode = 0.obs;
  switchTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    if (Get.isDarkMode) {
      darkMode.value = 1;
    } else {
      darkMode.value = 0;
    }
  }
}
