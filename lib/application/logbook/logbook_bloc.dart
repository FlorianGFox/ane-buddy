import 'dart:async';

import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook_entry.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'logbook_event.dart';
part 'logbook_state.dart';
part 'logbook_bloc.freezed.dart';

@injectable
class LogbookBloc extends Bloc<LogbookEvent, LogbookState> {
  LogbookBloc() : super(_Initial());

  @override
  Stream<LogbookState> mapEventToState(
    LogbookEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
