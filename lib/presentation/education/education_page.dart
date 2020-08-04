import 'package:ane_buddy/domain/education/entities/further_education.dart';
import 'package:ane_buddy/domain/education/entities/further_education_entry.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  final FurtherEducation education = FurtherEducation([
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
  ]);

  EducationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weiterbildung'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: ListView.builder(
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
                onPressed: () {},
                child: Text('Weiterbildung hinzufügen'),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, FurtherEducationEntry entry) {
    return Text(entry.educator);
  }

  Widget _buildSubtitle(BuildContext context, FurtherEducationEntry entry) {
    return Text(entry.startDate + ' - ' + entry.endDate);
  }
}
