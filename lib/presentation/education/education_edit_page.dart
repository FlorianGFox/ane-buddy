import 'package:ane_buddy/presentation/core/widgets/ane_date_time_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../domain/education/entities/further_education_entry.dart';

class EducationEditPage extends StatefulWidget {
  const EducationEditPage({Key key}) : super(key: key);

  @override
  _EducationEditPageState createState() => _EducationEditPageState();
}

class _EducationEditPageState extends State<EducationEditPage> {
  FurtherEducationEntry entry;

  _EducationEditPageState([this.entry = const FurtherEducationEntry()]);

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('dd.MM.yyyy');
    final SizedBox smallDistance = SizedBox(height: 15.0);
    final SizedBox mediumDistance = SizedBox(height: 30.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('Weiterbildung erstellen'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Weiterbildungsstätte Name',
              ),
              controller: TextEditingController(text: entry.institution ?? ''),
              onChanged: (value) {
                entry = entry.copyWith(
                  institution: value,
                );
              },
            ),
            smallDistance,
            TextField(
              decoration: InputDecoration(
                labelText: 'Weiterbildungsstätte Ort',
              ),
              controller: TextEditingController(text: entry.place ?? ''),
              onChanged: (value) {
                entry = entry.copyWith(
                  place: value,
                );
              },
            ),
            smallDistance,
            TextField(
              decoration: InputDecoration(
                labelText: 'Weiterbilder',
              ),
              controller: TextEditingController(text: entry.educator ?? ''),
              onChanged: (value) {
                entry = entry.copyWith(
                  educator: value,
                );
              },
            ),
            smallDistance,
            TextField(
              decoration: InputDecoration(
                labelText: 'Gebiet/Schwerpunkt/Zusatz-Weiterbildung',
              ),
              controller: TextEditingController(text: entry.topic ?? ''),
              onChanged: (value) {
                entry = entry.copyWith(
                  topic: value,
                );
              },
            ),
            AneDateTimeField(
              labelText: 'Von',
              dateFormat: dateFormat,
              firstDate: DateTime(1900),
              initialDate: DateTime.now(),
              lastDate: DateTime.now(),
              controller: TextEditingController(text: entry.startDate ?? ''),
              onChanged: (value) {
                entry = entry.copyWith(
                  startDate: dateFormat.format(value),
                );
              },
            ),
            smallDistance,
            AneDateTimeField(
              labelText: 'Bis',
              dateFormat: dateFormat,
              firstDate: DateTime(1900),
              initialDate: DateTime.now(),
              lastDate: DateTime.now(),
              controller: TextEditingController(text: entry.endDate ?? ''),
              onChanged: (value) {
                entry = entry.copyWith(
                  startDate: dateFormat.format(value),
                );
              },
            ),
            mediumDistance,
            RaisedButton(
              onPressed: () {},
              child: Text('Speichern'),
            ),
          ],
        ),
      ),
    );
  }
}
