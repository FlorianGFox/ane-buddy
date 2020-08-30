import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

import '../../../application/education/education_bloc.dart';
import '../../../domain/education/entities/further_education_entry.dart';
import '../../core/widgets/ane_date_time_field.dart';
import '../../core/widgets/ane_input_decoration.dart';
import '../education_page.dart';

class EducationEditForm extends StatefulWidget {
  final FurtherEducationEntry _entry;

  EducationEditForm(FurtherEducationEntry entry) : _entry = entry;

  @override
  _EducationEditFormState createState() => _EducationEditFormState(_entry);
}

class _EducationEditFormState extends State<EducationEditForm> {
  FurtherEducationEntry entry;

  _EducationEditFormState(this.entry);

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('dd.MM.yyyy');
    final SizedBox smallDistance = SizedBox(height: 15.0);

    return BlocConsumer<EducationBloc, EducationState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {},
          finishedLoading: (_) {},
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
                    context
                        .bloc<EducationBloc>()
                        .add(EducationEvent.updateCashedEntry(entry));
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
                    context
                        .bloc<EducationBloc>()
                        .add(EducationEvent.updateCashedEntry(entry));
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
                    context
                        .bloc<EducationBloc>()
                        .add(EducationEvent.updateCashedEntry(entry));
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
                    context
                        .bloc<EducationBloc>()
                        .add(EducationEvent.updateCashedEntry(entry));
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
                      startDate:
                          value == null ? null : dateFormat.format(value),
                    );
                    context
                        .bloc<EducationBloc>()
                        .add(EducationEvent.updateCashedEntry(entry));
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
                      endDate: value == null ? null : dateFormat.format(value),
                    );
                    context
                        .bloc<EducationBloc>()
                        .add(EducationEvent.updateCashedEntry(entry));
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
