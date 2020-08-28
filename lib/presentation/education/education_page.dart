import 'package:ane_buddy/domain/education/entities/further_education.dart';
import 'package:ane_buddy/injection.dart';
import 'package:ane_buddy/presentation/core/pages/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/education/education_bloc.dart';
import 'widgets/further_education_list_view.dart';

class EducationPage extends StatelessWidget {
  EducationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EducationBloc>()..add(EducationEvent.load()),
      child: _EducationPage(),
    );
  }
}

class _EducationPage extends StatefulWidget {
  _EducationPage({Key key}) : super(key: key);

  @override
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<_EducationPage> {
  Widget pageToBuild = Container();

  @override
  Widget build(BuildContext context) {
    return BlocListener<EducationBloc, EducationState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {
            setState(() {
              pageToBuild = LoadingPage(text: 'Lade Weiterbildungen...');
            });
          },
          viewing: (state) {
            setState(() {
              pageToBuild = _createPage(context, state.education);
            });
          },
          editing: (editingState) {
            context
                .bloc<EducationBloc>()
                .add(EducationEvent.view(editingState.education));
          },
          deleting: (_) {},
          saving: (_) {},
        );
      },
      child: pageToBuild,
    );
  }

  Widget _createPage(BuildContext context, FurtherEducation education) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weiterbildung'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: FurtherEducationListView(education),
      ),
    );
  }
}
