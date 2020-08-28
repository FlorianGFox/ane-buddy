import 'package:flutter/material.dart';

class AneInputDecoration extends InputDecoration {
  AneInputDecoration({
    String labelText,
    Widget icon,
  }) : super(
          labelText: labelText,
          icon: icon,
          border: OutlineInputBorder(),
        );
}
