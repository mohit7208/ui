import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscureText;
  final TextInputType textInputType;
  final TextEditingController controller;

  const CustomTextField(
      {Key key,
      this.hintText,
      this.labelText,
      this.obscureText = false,
      this.textInputType = TextInputType.text,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(hintText: hintText, labelText: labelText),
    );
  }
}
