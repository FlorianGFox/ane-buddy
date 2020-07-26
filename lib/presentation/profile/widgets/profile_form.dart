import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../../application/profile/profile_bloc.dart';
import '../../../domain/profile/entities/profile.dart';
import 'ane_date_time_field.dart';
import 'ane_textfield.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final DateFormat dateFormat = DateFormat('dd.MM.yyyy');

  Profile _profile = Profile();

  @override
  Widget build(BuildContext context) {
    final SizedBox smallDistance = SizedBox(height: 15.0);
    final SizedBox mediumDistance = SizedBox(height: 30.0);
    final TextStyle subTitle = Theme.of(context).textTheme.subtitle1;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text(
            'Angaben zur Person',
            style: subTitle,
          ),
          smallDistance,
          AneTextField(
            labelText: 'Vorname',
          ),
          smallDistance,
          AneTextField(
            labelText: 'Nachname',
          ),
          smallDistance,
          AneDateTimeField(
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime(1995),
            lastDate: DateTime.now(),
            labelText: 'Geburtstag',
          ),
          smallDistance,
          AneTextField(
            labelText: 'Geburtsort/ggf. -land',
          ),
          mediumDistance,
          Text(
            'Akademische Grade',
            style: subTitle,
          ),
          smallDistance,
          CheckboxListTile(
            value: false,
            title: Text('Dr. med.'),
            onChanged: (value) {},
          ),
          AneTextField(
            labelText: 'Sonstige akademische Grade',
          ),
          smallDistance,
          CheckboxListTile(
            title: Text('Ausländische Grade'),
            value: false,
            onChanged: (value) {},
          ),
          AneTextField(
            labelText: 'Welche ausländische Grade',
          ),
          mediumDistance,
          Text(
            'Angaben zu Prüfungen and Approbation',
            style: subTitle,
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Ärztliche Prüfung',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Zahnärztliches Staatsexamen (nur bei MKG-Chirurgie)',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Approbation als Arzt bzw. Berufserlaubnis',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
          ),
          mediumDistance,
          RaisedButton(
            onPressed: () {
              context.bloc<ProfileBloc>().add(ProfileEvent.save(_profile));
            },
            child: Text('Speichern'),
          ),
        ],
      ),
    );
  }
}
