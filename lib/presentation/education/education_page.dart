import 'package:ane_buddy/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/education/education_bloc.dart';
import 'widgets/further_education_list_view.dart';

class EducationPage extends StatelessWidget {
  EducationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weiterbildung'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: BlocProvider(
          create: (context) =>
              getIt<EducationBloc>()..add(EducationEvent.load()),
          child: FurtherEducationListView(),
        ),
      ),
    );
  }
}
