import 'package:ane_buddy/application/logbook/logbook_bloc.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logbook_list_page.dart';

class LogbookListView extends StatelessWidget {
  const LogbookListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogbookBloc, LogbookState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          viewing: (state) {
            Logbook logbook = state.logbook;
            return _buildListView(context, logbook);
          },
          loading: (_) => Container(),
          saving: (_) => Container(),
          editing: (_) => Container(),
        );
      },
    );
  }

  Widget _buildListView(context, Logbook logbook) {
    return ListView.builder(
      itemCount: logbook.lists.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(logbook.lists[index].name),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    LogbookListPage(logbook, logbook.lists[index]),
              ),
            );
          },
        );
      },
    );
  }
}
