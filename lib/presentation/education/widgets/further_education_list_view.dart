import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/education/education_bloc.dart';
import '../../../domain/education/entities/further_education.dart';
import '../../../domain/education/entities/further_education_entry.dart';
import '../education_edit_page.dart';

class FurtherEducationListView extends StatefulWidget {
  FurtherEducationListView({Key key}) : super(key: key);

  @override
  _FurtherEducationListViewState createState() =>
      _FurtherEducationListViewState();
}

class _FurtherEducationListViewState extends State<FurtherEducationListView> {
  /*final FurtherEducation education = FurtherEducation([
    FurtherEducationEntry(
      educator: 'Test Educator',
      endDate: '01.01.2000',
      startDate: '01.01.2000',
      institution: 'Test Institution',
      place: 'Test Place',
      topic: 'Test topic',
    ),
    FurtherEducationEntry(
      educator: 'Test Educator 2',
      endDate: '01.01.2000',
      startDate: '01.01.2000',
      institution: 'Test Institution',
      place: 'Test Place',
      topic: 'Test topic',
    ),
  ]);*/

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loading: (_) => Container(),
          viewing: (viewingState) {
            return _buildList(context, viewingState.education);
          },
          editing: (_) => Container(),
          deleting: (_) => Container(),
          saving: (_) => Container(),
        );
      },
    );
  }

  Widget _buildList(BuildContext context, FurtherEducation education) {
    return ListView.builder(
      itemCount: education.entries.length + 1,
      itemBuilder: (context, index) {
        if (index < education.entries.length) {
          final entry = education.entries[index];
          return ListTile(
            title: _buildTile(context, entry),
            subtitle: _buildSubtitle(context, entry),
          );
        } else {
          return RaisedButton(
            onPressed: () {
              context.bloc<EducationBloc>().add(EducationEvent.edit(education));
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EducationEditPage(education)),
              );
            },
            child: Text('Weiterbildung hinzufügen'),
          );
        }
      },
    );
  }

  Widget _buildTile(BuildContext context, FurtherEducationEntry entry) {
    return Text(entry.educator ?? '');
  }

  Widget _buildSubtitle(BuildContext context, FurtherEducationEntry entry) {
    return Text((entry.startDate ?? '') + ' - ' + (entry.endDate ?? ''));
  }
}
