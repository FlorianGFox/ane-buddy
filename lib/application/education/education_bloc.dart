import 'dart:async';

import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/education/entities/further_education.dart';
import 'package:ane_buddy/domain/education/entities/further_education_entry.dart';
import 'package:ane_buddy/domain/education/repositories/education_dao.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'education_event.dart';
part 'education_state.dart';

part 'education_bloc.freezed.dart';

@injectable
class EducationBloc extends Bloc<EducationEvent, EducationState> {
  final EducationDao dao;

  EducationBloc(this.dao) : super(EducationState.initial());

  @override
  Stream<EducationState> mapEventToState(
    EducationEvent event,
  ) async* {
    yield* event.map(
      load: _mapLoad,
      edit: _mapEdit,
      save: _mapSave,
      delete: _mapDelete,
      view: _mapView,
    );
  }

  Stream<EducationState> _mapView(_View event) async* {
    yield EducationState.viewing(education: event.education);
  }

  Stream<EducationState> _mapLoad(_Load event) async* {
    yield EducationState.loading();
    final failureOrEducation = await dao.load();
    yield failureOrEducation.fold(
      (failure) => EducationState.viewing(
          education: null, failed: true, failure: failure),
      (education) => EducationState.viewing(education: education),
    );
  }

  Stream<EducationState> _mapEdit(_Edit event) async* {
    yield EducationState.editing(
      education: event.education,
      entryToEdit: event.entry,
    );
  }

  Stream<EducationState> _mapSave(_Save event) async* {
    yield EducationState.saving();
    final mayBeFailure = await dao.save(event.education);
    yield mayBeFailure.fold(
      (failure) => EducationState.editing(
        education: event.education,
        entryToEdit: event.newEntry,
        failed: true,
        failure: failure,
      ),
      (_) => EducationState.viewing(education: event.education),
    );
  }

  Stream<EducationState> _mapDelete(_Delete event) async* {
    yield EducationState.deleting();
    List<FurtherEducationEntry> entries = [...event.education.entries];
    bool succeeded = entries.remove(event.entryToDelete);
    if (succeeded) {
      FurtherEducation education = FurtherEducation(entries);
      yield EducationState.saving();
      final mayBeFailure = await dao.save(education);
      yield mayBeFailure.fold(
        (failure) => EducationState.viewing(
          education: event.education,
          failed: true,
          failure: failure,
        ),
        (_) => EducationState.viewing(education: education),
      );
    } else {
      yield EducationState.viewing(
        education: event.education,
        failed: true,
        failure: RepoFailure.invalidState(),
      );
    }
  }
}
