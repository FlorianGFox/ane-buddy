part of '../pdf_creator.dart';

class _PdfLogbook extends StatelessWidget {
  final Logbook logbook;

  _PdfLogbook(this.logbook);

  @override
  Widget build(Context context) {
    return Column(
      children: <Widget>[
        for (int i = 0; i < logbook.lists.length; i++)
          _createTable(logbook.lists[i]),
      ],
    );
  }

  Widget _createTable(LogbookList list) {
    List<LogbookEntry> entries = list.entries;
    final tableData = _createTableData(entries);
    return Column(
      children: <Widget>[
        Text(list.name),
        Table.fromTextArray(data: tableData),
        SizedBox(height: 30.0),
      ],
    );
  }

  List<List<String>> _createTableData(List<LogbookEntry> entries) {
    return [
      for (int i = 0; i < entries.length; i++)
        <String>[
          entries[i].text +
              ' (' +
              entries[i].dates.length.toString() +
              ' von ' +
              entries[i].max.toString() +
              ')',
          if (entries[i].dates.length == 0)
            '\n'
          else
            _createEntryList(entries[i].dates)
        ]
    ];
  }

  String _createEntryList(List<String> dates) {
    String result = '';
    for (int j = 0; j < dates.length; j++) {
      result = result + dates[j] + '\n';
    }
    return result;
  }
}
