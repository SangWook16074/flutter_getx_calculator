import 'package:flutter/material.dart';
import 'package:flutter_getx_calculator/src/components/input_field.dart';

class App extends StatelessWidget {
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
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          '결과 : Result',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }

  Widget _input() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: InputField(
            hintText: '첫번째 숫자',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: InputField(
            hintText: '두번째 숫자',
          ),
        ),
      ],
    );
  }

  Widget _button() {
    return ElevatedButton(onPressed: () {}, child: const Text('더하기'));
  }
}
