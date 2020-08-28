import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../../application/education/education_bloc.dart';
import '../../../domain/education/entities/further_education.dart';
import '../../../domain/education/entities/further_education_entry.dart';
import '../../core/widgets/ane_date_time_field.dart';
import '../../core/widgets/ane_input_decoration.dart';
import '../education_page.dart';

class EducationEditForm extends StatefulWidget {
  final FurtherEducationEntry _entry;
  final FurtherEducation _education;

  EducationEditForm(FurtherEducation education, FurtherEducationEntry entry,
      {Key key})
      : _entry = entry,
        _education = education,
        super(key: key);

  @override
  _EducationEditFormState createState() =>
      _EducationEditFormState(_education, _entry);
}

class _EducationEditFormState extends State<EducationEditForm> {
  final FurtherEducation education;
  FurtherEducationEntry entry;

  _EducationEditFormState(this.education, FurtherEducationEntry entryToEdit)
      : entry = entryToEdit ?? FurtherEducationEntry();

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('dd.MM.yyyy');
    final SizedBox smallDistance = SizedBox(height: 15.0);
    final SizedBox mediumDistance = SizedBox(height: 30.0);

    return BlocConsumer<EducationBloc, EducationState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {},
          viewing: (_) {
            Navigator.popUntil(
              context,
              ModalRoute.withName(Navigator.defaultRouteName),
            );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EducationPage()),
            );
          },
          editing: (_) {},
          deleting: (_) {},
          saving: (_) {},
        );
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                smallDistance,
                TextField(
                  decoration: AneInputDecoration(
                    labelText: 'Weiterbildungsstätte Name',
                  ),
                  controller:
                      TextEditingController(text: entry.institution ?? ''),
                  onChanged: (value) {
                    entry = entry.copyWith(
                      institution: value,
                    );
                  },
                ),
                smallDistance,
                TextField(
                  decoration: AneInputDecoration(
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
                  decoration: AneInputDecoration(
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
                  decoration: AneInputDecoration(
                    labelText: 'Gebiet/Schwerpunkt/Zusatz-Weiterbildung',
                  ),
                  controller: TextEditingController(text: entry.topic ?? ''),
                  onChanged: (value) {
                    entry = entry.copyWith(
                      topic: value,
                    );
                  },
                ),
                smallDistance,
                AneDateTimeField(
                  labelText: 'Von',
                  dateFormat: dateFormat,
                  firstDate: DateTime(1900),
                  initialDate: DateTime.now(),
                  lastDate: DateTime.now(),
                  controller:
                      TextEditingController(text: entry.startDate ?? ''),
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
                      endDate: dateFormat.format(value),
                    );
                  },
                ),
                mediumDistance,
                RaisedButton(
                  onPressed: () {
                    education.entries.add(entry);
                    context
                        .bloc<EducationBloc>()
                        .add(EducationEvent.save(education, entry));
                  },
                  child: Text('Speichern'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
