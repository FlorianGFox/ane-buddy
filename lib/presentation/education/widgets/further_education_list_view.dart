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
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EducationBloc, EducationState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loading: (_) {},
          viewing: (viewingState) {
            setState(() {});
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
            onTap: () {
              _showConfirmDialog(
                context,
                title: 'Eintrag löschen?',
                content: 'Damit wird der Eintrag unwiderruflich entfernt.',
                acceptText: 'Ok',
                cancelText: 'Abbrechen',
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

  void _showConfirmDialog(
    BuildContext context, {
    @required String title,
    @required String content,
    @required String acceptText,
    @required String cancelText,
    @required Function() onAccept,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            FlatButton(
              child: Text(cancelText),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text(acceptText),
              onPressed: () {
                Navigator.of(context).pop();
                onAccept();
              },
            )
          ],
        );
      },
    );
  }
}
