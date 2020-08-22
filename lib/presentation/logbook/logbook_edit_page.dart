import 'package:ane_buddy/application/logbook/logbook_bloc.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook_entry.dart';
import 'package:ane_buddy/presentation/logbook/widgets/logbook_edit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class LogbookEditPage extends StatefulWidget {
  final LogbookEntry entry;
  final Logbook logbook;
  const LogbookEditPage(this.logbook, this.entry, {Key key}) : super(key: key);

  @override
  _LogbookEditPageState createState() => _LogbookEditPageState(logbook, entry);
}

class _LogbookEditPageState extends State<LogbookEditPage> {
  final LogbookEntry entry;
  final Logbook logbook;

  _LogbookEditPageState(this.logbook, this.entry);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(entry.text),
      ),
      body: BlocProvider(
        create: (context) => getIt<LogbookBloc>(),
        child: LogbookEditForm(widget.logbook, widget.entry),
      ),
    );
  }
}
