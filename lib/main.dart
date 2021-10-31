import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/nav_file.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    *Add "Get" before your MaterialApp, turning it into GetMaterialApp
    */
    return GetMaterialApp(
      // Before: MaterialApp
      title: "GetX Learning",
      // named Routes in GetX
      /*getPages: [
        GetPage(name: '/demo', page: () => const Demo()),
        // Syntax with Passing data
        GetPage(name: '/demo/:passData', page: () => const Demo()),
      ],
      */
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: const NavigationPage(),
    );
  }
}

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
  );
}
