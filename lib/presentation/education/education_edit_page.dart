import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/education/education_bloc.dart';
import '../../domain/education/entities/further_education.dart';
import '../../domain/education/entities/further_education_entry.dart';
import '../../injection.dart';
import '../core/widgets/confirm_dialog.dart';
import 'education_page.dart';
import 'widgets/education_edit_form.dart';

class EducationEditPage extends StatelessWidget {
  final FurtherEducationEntry entry;
  final FurtherEducation education;
  final int entryIndex;

  EducationEditPage(this.education, this.entry, this.entryIndex);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EducationBloc>()
        ..add(EducationEvent.edit(
          editEntryAtIndex: entryIndex,
          education: education,
          entry: entry,
        )),
      child: _Page(education, entry, entryIndex),
    );
  }
}

class _Page extends StatelessWidget {
  final FurtherEducationEntry entry;
  final FurtherEducation education;
  final int entryIndex;

  const _Page(this.education, this.entry, this.entryIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weiterbildung'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              _saveEntry(context);
            },
          ),
          if (entryIndex != null) _buildPopUpMenu(context),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: BlocProvider(
          create: (context) => context.bloc<EducationBloc>()
            ..add(EducationEvent.edit(
              editEntryAtIndex: entryIndex,
              education: education,
              entry: entry,
            )),
          child: EducationEditForm(entry),
        ),
      ),
    );
  }

  Widget _buildPopUpMenu(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        if (value == 'Lösche Eintrag') {
          _deleteEntry(context);
        }
      },
      itemBuilder: (BuildContext context) {
        return {'Lösche Eintrag'}.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }

  void _saveEntry(BuildContext context) {
    context.bloc<EducationBloc>().add(EducationEvent.saveCashedEntry());
    Navigator.popUntil(
      context,
      ModalRoute.withName(Navigator.defaultRouteName),
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EducationPage()),
    );
  }

  void _deleteEntry(BuildContext context) {
    ConfirmDialog.show(
      context,
      title: 'Eintrag löschen?',
      content: 'Damit wird der Eintrag unwiderruflich entfernt.',
      onAccept: () {
        context
            .bloc<EducationBloc>()
            .add(EducationEvent.delete(education, entry));
        Navigator.popUntil(
          context,
          ModalRoute.withName(Navigator.defaultRouteName),
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EducationPage()),
        );
      },
    );
  }
}
