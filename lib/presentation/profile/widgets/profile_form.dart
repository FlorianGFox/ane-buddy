import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../../application/profile/profile_bloc.dart';
import '../../../domain/profile/entities/profile.dart';
import '../../core/widgets/ane_date_time_field.dart';

class ProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => Container(),
          ready: (state) => _Form(profile: state.profile),
          saving: (_) => Container(),
        );
      },
    );
  }
}

class _Form extends StatefulWidget {
  final Profile profile;

  const _Form({Key key, this.profile = const Profile()}) : super(key: key);

  @override
  _FormState createState() => _FormState(profile);
}

class _FormState extends State<_Form> {
  Profile profile;

  _FormState([this.profile = const Profile()]);

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('dd.MM.yyyy');
    final SizedBox smallDistance = SizedBox(height: 15.0);
    final SizedBox mediumDistance = SizedBox(height: 30.0);
    final TextStyle subTitle = Theme.of(context).textTheme.subtitle1;

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'Angaben zur Person',
              style: subTitle,
            ),
            smallDistance,
            TextField(
              decoration: InputDecoration(
                labelText: 'Vorname',
              ),
              controller: TextEditingController(text: profile.firstName),
              onChanged: (value) {
                profile = profile.copyWith(
                  firstName: value,
                );
              },
            ),
            smallDistance,
            TextField(
              decoration: InputDecoration(
                labelText: 'Nachname',
              ),
              controller: TextEditingController(text: profile.lastName),
              onChanged: (value) {
                profile = profile.copyWith(
                  lastName: value,
                );
              },
            ),
            smallDistance,
            AneDateTimeField(
              labelText: 'Geburtstag',
              dateFormat: dateFormat,
              firstDate: DateTime(1900),
              initialDate: DateTime(1995),
              lastDate: DateTime.now(),
              controller: TextEditingController(text: profile?.birthday),
              onChanged: (value) {
                profile = profile.copyWith(
                  birthday: dateFormat.format(value),
                );
              },
            ),
            smallDistance,
            TextField(
              decoration: InputDecoration(
                labelText: 'Geburtsort/ggf. -land',
              ),
              controller: TextEditingController(text: profile?.birthPlace),
              onChanged: (value) {
                profile = profile.copyWith(
                  birthPlace: value,
                );
              },
            ),
            mediumDistance,
            Text(
              'Akademische Grade',
              style: subTitle,
            ),
            smallDistance,
            CheckboxListTile(
              value: profile.hasDrMed ?? false,
              title: Text('Dr. med.'),
              onChanged: (value) {
                setState(() {
                  profile = profile.copyWith(
                    hasDrMed: value,
                  );
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Sonstige akademische Grade',
              ),
              controller: TextEditingController(text: profile.otherDegrees),
              onChanged: (value) {
                profile = profile.copyWith(
                  otherDegrees: value,
                );
              },
            ),
            smallDistance,
            CheckboxListTile(
              title: Text('Ausländische Grade'),
              value: profile.hasForeignDegree ?? false,
              onChanged: (value) {
                setState(() {
                  profile = profile.copyWith(
                    hasForeignDegree: value,
                  );
                });
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Welche ausländische Grade',
              ),
              controller: TextEditingController(text: profile.foreignDegrees),
              onChanged: (value) {
                profile = profile.copyWith(
                  foreignDegrees: value,
                );
              },
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
              controller: TextEditingController(text: profile.medicalExamDate),
              onChanged: (value) {
                profile = profile.copyWith(
                  medicalExamDate: dateFormat.format(value),
                );
              },
            ),
            smallDistance,
            AneDateTimeField(
              labelText: 'Zahnärztliches Staatsexamen (nur bei MKG-Chirurgie)',
              dateFormat: dateFormat,
              firstDate: DateTime(1900),
              initialDate: DateTime.now(),
              lastDate: DateTime.now(),
              controller: TextEditingController(text: profile.dentalExamDate),
              onChanged: (value) {
                profile = profile.copyWith(
                  dentalExamDate: dateFormat.format(value),
                );
              },
            ),
            smallDistance,
            AneDateTimeField(
              labelText: 'Approbation als Arzt bzw. Berufserlaubnis',
              dateFormat: dateFormat,
              firstDate: DateTime(1900),
              initialDate: DateTime.now(),
              lastDate: DateTime.now(),
              controller: TextEditingController(text: profile.approvalDate),
              onChanged: (value) {
                profile = profile.copyWith(
                  approvalDate: dateFormat.format(value),
                );
              },
            ),
            mediumDistance,
            RaisedButton(
              onPressed: () {
                context.bloc<ProfileBloc>().add(ProfileEvent.save(profile));
              },
              child: Text('Speichern'),
            ),
          ],
        ),
      ),
    );
  }
}
