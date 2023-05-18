import 'package:flutter/material.dart';

class GlassButton extends StatelessWidget {
  final void Function() onPressed;
  final Icon child;
  const GlassButton({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 1.5, color: Colors.white)),
        child: child,
      ),
    );
  }
}
