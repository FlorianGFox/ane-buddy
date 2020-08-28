import 'package:ane_buddy/presentation/core/widgets/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/education/education_bloc.dart';
import '../../../domain/education/entities/further_education.dart';
import '../../../domain/education/entities/further_education_entry.dart';
import '../education_edit_page.dart';

class FurtherEducationListView extends StatefulWidget {
  final FurtherEducation education;
  FurtherEducationListView(this.education, {Key key}) : super(key: key);

  @override
  _FurtherEducationListViewState createState() =>
      _FurtherEducationListViewState();
}

class _FurtherEducationListViewState extends State<FurtherEducationListView> {
  @override
  Widget build(BuildContext context) {
    return _buildList(context, widget.education);
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
            onTap: () {
              ConfirmDialog.show(
                context,
                title: 'Eintrag löschen?',
                content: 'Damit wird der Eintrag unwiderruflich entfernt.',
                onAccept: () {
                  context
                      .bloc<EducationBloc>()
                      .add(EducationEvent.delete(education, entry));
                },
              );
            },
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
