import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

class AneDateTimeField extends StatelessWidget {
  final DateFormat dateFormat;
  final DateTime firstDate;
  final DateTime initialDate;
  final DateTime lastDate;
  final String labelText;

  const AneDateTimeField({
    Key key,
    @required this.dateFormat,
    @required this.firstDate,
    @required this.initialDate,
    @required this.lastDate,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DateTimeField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
      format: dateFormat,
      onShowPicker: (context, currentValue) {
        return showDatePicker(
          context: context,
          firstDate: firstDate,
          initialDate: currentValue ?? initialDate,
          lastDate: lastDate,
        );
      },
    );
  }
}
