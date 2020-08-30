import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/education/education_bloc.dart';
import '../../../domain/education/entities/further_education.dart';
import '../../../domain/education/entities/further_education_entry.dart';
import '../../core/widgets/confirm_dialog.dart';
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
      itemCount: education.entries.length,
      itemBuilder: (context, index) {
        final entry = education.entries[index];
        return ListTile(
          title: _buildTile(context, entry),
          subtitle: _buildSubtitle(context, entry),
          onTap: () {
            _editEntry(education, index);
          },
        );
      },
    );
  }

  Widget _buildTile(BuildContext context, FurtherEducationEntry entry) {
    return Text(entry.institution ?? '');
  }

  Widget _buildSubtitle(BuildContext context, FurtherEducationEntry entry) {
    return Text((entry.startDate ?? '') + ' - ' + (entry.endDate ?? ''));
  }

  void _editEntry(FurtherEducation education, int index) {
    context
        .bloc<EducationBloc>()
        .add(EducationEvent.edit(education, education.entries[index]));
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => EducationEditPage(education, index)),
    );
  }

  void _showDeleteDialog(
      FurtherEducation education, FurtherEducationEntry entry) {
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
  }
}
