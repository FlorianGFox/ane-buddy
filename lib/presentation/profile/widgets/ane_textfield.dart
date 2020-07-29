import 'package:flutter/material.dart';

class AneTextField extends StatelessWidget {
  final String labelText;
  final Function(String) onChanged;
  final TextEditingController controller;

  const AneTextField({
    Key key,
    this.labelText,
    this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
      onChanged: onChanged,
      controller: controller,
    );
  }
}
