import '../../application/logbook/logbook_bloc.dart';
import 'widgets/logbook_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class LogbookPage extends StatelessWidget {
  LogbookPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logbuch'),
      ),
      body: BlocProvider(
        create: (context) => getIt<LogbookBloc>()..add(LogbookEvent.load()),
        child: LogbookListView(),
      ),
    );
  }
}
