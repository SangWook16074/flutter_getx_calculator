import 'package:flutter/material.dart';
import 'package:flutter_getx_calculator/src/components/glass_btn.dart';
import 'package:flutter_getx_calculator/src/components/input_field.dart';
import 'package:flutter_getx_calculator/src/controller/app_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class App extends GetView<AppController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white.withOpacity(0.4),
          foregroundColor: Colors.black,
          title: const Text('Flutter GetX Calculator'),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.lightBlue,
                Colors.deepPurpleAccent,
              ])),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(25.0),
                    border: Border.all(width: 2.0, color: Colors.white)),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _input(),
                      _button(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _result(),
      ),
    );
  }

  Widget _result() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(width: 2.0, color: Colors.white)),
          child: Obx(
            () => Text(
              '결과 : ${controller.result}',
              style: const TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }

  Widget _input() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
          child: InputField(
            controller: controller.num1,
            hintText: '첫번째 숫자',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
          child: InputField(
            controller: controller.num2,
            hintText: '두번째 숫자',
          ),
        ),
      ],
    );
  }

  Widget _button() {
    return SizedBox(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GlassButton(
              onPressed: controller.calculate,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              )),
          GlassButton(
              onPressed: controller.reset,
              child: const Icon(
                Icons.refresh,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
