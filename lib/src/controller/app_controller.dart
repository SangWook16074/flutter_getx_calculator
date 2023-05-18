import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  final RxInt _result = 0.obs;

  int get result => _result.value;

  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();

  void calculate() {
    final number1 = int.parse(num1.value.text.toString().trim());
    final number2 = int.parse(num2.value.text.toString().trim());

    var total = number1 + number2;
    _result(total);
  }
}
