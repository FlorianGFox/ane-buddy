import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/education/education_bloc.dart';
import '../../domain/education/entities/further_education.dart';
import '../../domain/education/entities/further_education_entry.dart';
import '../../injection.dart';
import 'widgets/education_edit_form.dart';

class EducationEditPage extends StatelessWidget {
  final FurtherEducation education;
  final FurtherEducationEntry entry;

  const EducationEditPage(this.education, [this.entry]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weiterbildung erstellen'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: BlocProvider(
          create: (context) => getIt<EducationBloc>(),
          child: EducationEditForm(education, entry),
        ),
      ),
    );
  }
}
