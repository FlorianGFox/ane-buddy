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

    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final birthDayController = TextEditingController();
    final birthplaceController = TextEditingController();

    bool hasDrMed;
    final otherDegreesController = TextEditingController();
    bool hasForeignDegree;
    final foreignDegreesController = TextEditingController();

    final medicalExamDateController = TextEditingController();
    final dentalExamDateController = TextEditingController();
    final approvalDateController = TextEditingController();

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
            controller: firstNameController,
          ),
          smallDistance,
          AneTextField(
            labelText: 'Nachname',
            controller: lastNameController,
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Geburtstag',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime(1995),
            lastDate: DateTime.now(),
            controller: birthDayController,
          ),
          smallDistance,
          AneTextField(
            labelText: 'Geburtsort/ggf. -land',
            controller: birthplaceController,
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
            onChanged: (value) {
              hasDrMed = value;
            },
          ),
          AneTextField(
            labelText: 'Sonstige akademische Grade',
            controller: otherDegreesController,
          ),
          smallDistance,
          CheckboxListTile(
            title: Text('Ausländische Grade'),
            value: false,
            onChanged: (value) {
              hasForeignDegree = value;
            },
          ),
          AneTextField(
            labelText: 'Welche ausländische Grade',
            controller: foreignDegreesController,
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
            controller: medicalExamDateController,
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Zahnärztliches Staatsexamen (nur bei MKG-Chirurgie)',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
            controller: dentalExamDateController,
          ),
          smallDistance,
          AneDateTimeField(
            labelText: 'Approbation als Arzt bzw. Berufserlaubnis',
            dateFormat: dateFormat,
            firstDate: DateTime(1900),
            initialDate: DateTime.now(),
            lastDate: DateTime.now(),
            controller: approvalDateController,
          ),
          mediumDistance,
          RaisedButton(
            onPressed: () {
              Profile profile = Profile(
                firstName: firstNameController.text,
                lastName: lastNameController.text,
                birthday: birthDayController.text,
                birthPlace: birthplaceController.text,
                hasDrMed: hasDrMed,
                otherDegrees: otherDegreesController.text,
                hasForeignDegree: hasForeignDegree,
                foreignDegrees: foreignDegreesController.text,
                medicalExamDate: medicalExamDateController.text,
                dentalExamDate: dentalExamDateController.text,
                approvalDate: approvalDateController.text,
              );
              context.bloc<ProfileBloc>().add(ProfileEvent.save(profile));
            },
            child: Text('Speichern'),
          ),
        ],
      ),
    );
  }
}
