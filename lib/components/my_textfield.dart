import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const MyTextfield({
    required this.hintText,
    required this.controller,
    required this.obscureText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey, // Color when the TextField is not focused
            width: 1.5, // Width of the border
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue, // Color when the TextField is focused
            width: 2.0, // Width of the focused border
          ),
        ),
      ),
    );
  }
}
