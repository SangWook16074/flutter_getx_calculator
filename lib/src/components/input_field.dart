import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 3.0),
              borderRadius: BorderRadius.circular(12.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 1.5),
              borderRadius: BorderRadius.circular(12.0)),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black)),
    );
  }
}
