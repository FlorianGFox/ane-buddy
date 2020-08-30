import 'package:ane_buddy/application/logbook/logbook_bloc.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook_entry.dart';
import 'package:ane_buddy/presentation/core/widgets/ane_date_time_field.dart';
import 'package:ane_buddy/presentation/core/widgets/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

class LogbookEditForm extends StatefulWidget {
  final LogbookEntry entry;
  final Logbook logbook;

  LogbookEditForm(this.logbook, this.entry, {Key key}) : super(key: key);

  @override
  _LogbookEditFormState createState() => _LogbookEditFormState(logbook, entry);
}

class _LogbookEditFormState extends State<LogbookEditForm> {
  final Logbook logbook;
  final LogbookEntry entry;

  String lastTime = '';

  _LogbookEditFormState(this.logbook, this.entry);

  @override
  Widget build(BuildContext context) {
    TextEditingController dateTimeFieldController =
        TextEditingController(text: lastTime);
    final DateFormat dateFormat = DateFormat('dd.MM.yyyy HH:mm');

    return Column(
      children: <Widget>[
        AneDateTimeField(
          labelText: 'Datum und Uhrzeit',
          dateFormat: dateFormat,
          enableTimePicker: true,
          firstDate: DateTime(1900),
          initialDate: DateTime.now(),
          lastDate: DateTime.now(),
          controller: dateTimeFieldController,
          onChanged: (value) {
            setState(() {
              lastTime = dateFormat.format(value);
            });
          },
        ),
        RaisedButton(
          child: Text('Hinzufügen'),
          onPressed: () {
            setState(() {
              entry.dates.add(dateTimeFieldController.text);
              context
                  .bloc<LogbookBloc>()
                  .add(LogbookEvent.save(logbook, entry));
            });
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: entry.dates.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(entry.dates[index]),
                onTap: () {
                  setState(() {
                    ConfirmDialog.show(
                      context,
                      title: 'Lösche Eintrag?',
                      content:
                          'Damit wird der Eintrag unwiderruflich entfernt.',
                      onAccept: () {
                        setState(() {
                          entry.dates.removeAt(index);
                          context
                              .bloc<LogbookBloc>()
                              .add(LogbookEvent.save(logbook, entry));
                        });
                      },
                    );
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
