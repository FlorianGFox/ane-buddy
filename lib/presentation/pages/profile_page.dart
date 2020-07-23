import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../widgets/ane_date_time_field.dart';
import '../widgets/ane_textfield.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: ProfilePageBody(),
      ),
    );
  }
}

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: ProfileForm(),
        ),
      ),
    );
  }
}

class ProfileForm extends StatelessWidget {
  final DateFormat dateFormat = DateFormat('dd.MM.yyyy');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AneTextField(
          labelText: 'Vorname',
        ),
        AneTextField(
          labelText: 'Nachname',
        ),
        AneDateTimeField(
          dateFormat: dateFormat,
          firstDate: DateTime(1900),
          initialDate: DateTime(1995),
          lastDate: DateTime.now(),
          labelText: 'Geburtstag',
        ),
        AneTextField(
          labelText: 'Geburtsort/ggf. -land',
        ),
        CheckboxListTile(
          value: false,
          title: Text('Dr. med.'),
          onChanged: (value) {},
        ),
        AneTextField(
          labelText: 'Sonstige akademische Grade',
        ),
        CheckboxListTile(
          title: Text('Ausländische Grade'),
          value: false,
          onChanged: (value) {},
        ),
        AneTextField(
          labelText: 'Welche ausländische Grade',
        ),
        AneDateTimeField(
          labelText: 'Ärztliche Prüfung',
          dateFormat: dateFormat,
          firstDate: DateTime(1900),
          initialDate: DateTime.now(),
          lastDate: DateTime.now(),
        ),
        AneDateTimeField(
          labelText: 'Zahnärztliches Staatsexamen (nur bei MKG-Chirurgie)',
          dateFormat: dateFormat,
          firstDate: DateTime(1900),
          initialDate: DateTime.now(),
          lastDate: DateTime.now(),
        ),
        AneDateTimeField(
          labelText: 'Approbation als Arzt bzw. Berufserlaubnis',
          dateFormat: dateFormat,
          firstDate: DateTime(1900),
          initialDate: DateTime.now(),
          lastDate: DateTime.now(),
        ),
      ],
    );
  }
}
