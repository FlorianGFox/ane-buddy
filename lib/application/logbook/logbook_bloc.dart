import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook_entry.dart';
import 'package:ane_buddy/domain/logbook/repositories/logbook_dao.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'logbook_event.dart';
part 'logbook_state.dart';
part 'logbook_bloc.freezed.dart';

@injectable
class LogbookBloc extends Bloc<LogbookEvent, LogbookState> {
  final LogbookDao dao;

  LogbookBloc(this.dao) : super(_Initial());

  @override
  Stream<LogbookState> mapEventToState(
    LogbookEvent event,
  ) async* {
    yield* event.map(
      load: _mapLoad,
      edit: _mapEdit,
      save: _mapSave,
      view: _mapView,
    );
  }

  Stream<LogbookState> _mapLoad(_Load event) async* {
    yield LogbookState.loading();
    final failureOrLogbook = await dao.load();
    yield failureOrLogbook.fold(
      (failure) {
        String jsonData = File(
          'assets/data/initial_logbook.json',
        ).readAsStringSync();
        final jsonMap = json.decode(jsonData);
        return LogbookState.viewing(
          logbook: Logbook.fromJson(jsonMap),
          failed: true,
          failure: failure,
        );
      },
      (logbook) => LogbookState.viewing(logbook: logbook),
    );
  }

  Stream<LogbookState> _mapEdit(_Edit event) async* {
    yield LogbookState.editing(
      logbook: event.logbook,
      entry: event.entry,
    );
  }

  Stream<LogbookState> _mapSave(_Save event) async* {
    yield LogbookState.saving();
    final mayBeFailure = await dao.save(event.logbook);
    yield mayBeFailure.fold(
      (failure) => LogbookState.editing(
        logbook: event.logbook,
        entry: event.entry,
        failed: true,
        failure: failure,
      ),
      (_) => LogbookState.viewing(logbook: event.logbook),
    );
  }

  Stream<LogbookState> _mapView(_View event) async* {
    yield LogbookState.viewing(logbook: event.logbook);
  }
}
