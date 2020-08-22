import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

class AneDateTimeField extends StatelessWidget {
  final DateFormat dateFormat;
  final DateTime firstDate;
  final DateTime initialDate;
  final DateTime lastDate;
  final String labelText;
  final TextEditingController controller;
  final Function(DateTime) onChanged;
  final bool enableTimePicker;

  const AneDateTimeField({
    Key key,
    @required this.dateFormat,
    @required this.firstDate,
    @required this.initialDate,
    @required this.lastDate,
    this.labelText,
    this.controller,
    this.onChanged,
    this.enableTimePicker = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DateTimeField(
      decoration: InputDecoration(
        labelText: labelText,
      ),
      format: dateFormat,
      controller: controller,
      onChanged: onChanged,
      onShowPicker: (context, currentValue) async {
        DateTime result = await showDatePicker(
          context: context,
          firstDate: firstDate,
          initialDate: currentValue ?? initialDate,
          lastDate: lastDate,
        );
        if (enableTimePicker && result != null) {
          TimeOfDay time = await showTimePicker(
              context: context, initialTime: TimeOfDay.now());
          if (time != null) {
            result = result
                .add(new Duration(hours: time.hour, minutes: time.minute));
          }
        }
        return result;
      },
    );
  }
}
