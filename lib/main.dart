import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/bindings/init_binding.dart';
import 'src/view/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white, foregroundColor: Colors.black)),
      home: const App(),
      initialBinding: InitBinding(),
    );
  }
}
