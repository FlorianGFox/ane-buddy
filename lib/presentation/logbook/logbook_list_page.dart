import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook_list.dart';
import 'package:ane_buddy/presentation/logbook/logbook_edit_page.dart';
import 'package:flutter/material.dart';

class LogbookListPage extends StatelessWidget {
  final LogbookList logList;
  final Logbook logbook;

  const LogbookListPage(this.logbook, this.logList, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(logList.name),
      ),
      body: ListView.builder(
        itemCount: logList.entries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(logList.entries[index].text),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      LogbookEditPage(logbook, logList.entries[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
