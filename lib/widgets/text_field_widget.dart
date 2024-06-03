import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String hintText;
  TextFieldWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText, border: const OutlineInputBorder()),
    );
  }
}
