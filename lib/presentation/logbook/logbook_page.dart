import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook_entry.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook_list.dart';
import 'package:ane_buddy/presentation/logbook/logbook_list_page.dart';
import 'package:flutter/material.dart';

class LogbookPage extends StatelessWidget {
  final Logbook logbook = Logbook(
    [
      LogbookList(
        'list 1',
        [
          LogbookEntry(
            'entry 1',
            [],
            10,
          ),
          LogbookEntry(
            'entry 2',
            [],
            10,
          ),
        ],
      ),
      LogbookList(
        'list 2',
        [
          LogbookEntry(
            'entry 1',
            [],
            10,
          ),
          LogbookEntry(
            'entry 2',
            [],
            10,
          ),
        ],
      ),
      LogbookList(
        'list 3',
        [
          LogbookEntry(
            'entry 1',
            [],
            10,
          ),
          LogbookEntry(
            'entry 2',
            [],
            10,
          )
        ],
      ),
    ],
  );

  LogbookPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logbuch'),
      ),
      body: ListView.builder(
        itemCount: logbook.lists.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(logbook.lists[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LogbookListPage(logbook.lists[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
