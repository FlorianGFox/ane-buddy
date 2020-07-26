import 'package:flutter/material.dart';

class AneTextField extends StatelessWidget {
  final String labelText;

  const AneTextField({
    Key key,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
