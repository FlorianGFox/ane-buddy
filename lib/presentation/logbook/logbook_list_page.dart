import 'package:ane_buddy/domain/logbook/entities/logbook_list.dart';
import 'package:flutter/material.dart';

class LogbookListPage extends StatelessWidget {
  final LogbookList logList;

  const LogbookListPage(this.logList, {Key key}) : super(key: key);

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
          );
        },
      ),
    );
  }
}
