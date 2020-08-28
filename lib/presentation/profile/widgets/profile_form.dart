import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../../application/profile/profile_bloc.dart';
import '../../../domain/profile/entities/profile.dart';
import '../../core/widgets/ane_date_time_field.dart';

class ProfileForm extends StatefulWidget {
  final Profile _profile;

  ProfileForm(this._profile);

  @override
  _ProfileFormState createState() => _ProfileFormState(_profile);
}

class _ProfileFormState extends State<ProfileForm> {
  Profile profile;

  _ProfileFormState(this.profile);

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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
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
                  context
                      .bloc<ProfileBloc>()
                      .add(ProfileEvent.updateCachedProfile(profile));
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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
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
                  context
                      .bloc<ProfileBloc>()
                      .add(ProfileEvent.updateCachedProfile(profile));
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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
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
                context
                    .bloc<ProfileBloc>()
                    .add(ProfileEvent.updateCachedProfile(profile));
              },
            ),
            mediumDistance,
          ],
        ),
      ),
    );
  }
}
