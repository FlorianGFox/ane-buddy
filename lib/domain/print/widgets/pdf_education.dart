part of '../pdf_creator.dart';

class _PdfEducation extends StatelessWidget {
  final FurtherEducation education;

  _PdfEducation(this.education);

  @override
  Widget build(Context context) {
    List<List<String>> tableData = _createTableData(education.entries);
    return Table.fromTextArray(data: tableData);
  }

  List<List<String>> _createTableData(List<FurtherEducationEntry> entries) {
    return [
      <String>[
        'Nr',
        'von bis',
        'Weiterbildungstätte',
        'Weiterbilder',
        'Gebiet',
      ],
      for (int i = 0; i < entries.length; i++)
        <String>[
          (i + 1).toString(),
          entries[i].startDate + ' - ' + entries[i].endDate,
          entries[i].institution + entries[i].place,
          entries[i].educator,
          entries[i].topic,
        ]
    ];
  }
}
