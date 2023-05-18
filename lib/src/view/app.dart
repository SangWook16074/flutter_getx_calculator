import 'package:flutter/material.dart';
import 'package:flutter_getx_calculator/src/components/input_field.dart';
import 'package:flutter_getx_calculator/src/controller/app_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class App extends GetView<AppController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter GetX Calculator'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _input(),
              _button(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _result(),
    );
  }

  Widget _result() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(
          () => Text(
            '결과 : ${controller.result}',
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }

  Widget _input() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: InputField(
            controller: controller.num1,
            hintText: '첫번째 숫자',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: InputField(
            controller: controller.num2,
            hintText: '두번째 숫자',
          ),
        ),
      ],
    );
  }

  Widget _button() {
    return ElevatedButton(
        onPressed: controller.calculate, child: const Text('더하기'));
  }
}
