import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/education/education_bloc.dart';
import '../../domain/education/entities/further_education.dart';
import '../../injection.dart';
import 'widgets/education_edit_form.dart';

class EducationEditPage extends StatelessWidget {
  final FurtherEducation education;
  final int entryToEditIndex;

  const EducationEditPage(this.education, [this.entryToEditIndex]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weiterbildung'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              _saveEntry();
            },
          ),
          PopupMenuButton<String>(
            onSelected: (String value) {
              if (value == 'Lösche Eintrag') {
                _deleteEntry();
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
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: BlocProvider(
          create: (context) => getIt<EducationBloc>(),
          child: EducationEditForm(education, entryToEditIndex),
        ),
      ),
    );
  }

  void _saveEntry() {}
  void _deleteEntry() {}
}
