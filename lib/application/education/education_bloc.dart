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

  FurtherEducation _currentEducation;
  FurtherEducationEntry _currentEntry;
  int _currentEntryIndex;

  EducationBloc(this.dao) : super(EducationState.initial());

  @override
  Stream<EducationState> mapEventToState(
    EducationEvent event,
  ) async* {
    yield* event.map(
      load: _mapLoad,
      edit: _mapEdit,
      updateCashedEntry: _mapUpdateCashedEntry,
      saveCashedEntry: _mapSaveCashedEntry,
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
    yield* failureOrEducation.fold(
      (failure) async* {
        yield EducationState.viewing(
            education: FurtherEducation([]), failed: true, failure: failure);
      },
      (education) async* {
        _currentEducation = education;
        yield EducationState.finishedLoading(education: education);
        yield EducationState.viewing(education: education);
      },
    );
  }

  Stream<EducationState> _mapEdit(_Edit event) async* {
    if (event.education != null) {
      _currentEducation = event.education;
    }
    if (event.entry != null) {
      _currentEntry = event.entry;
    }
    if (event.editEntryAtIndex != null) {
      _currentEntryIndex = event.editEntryAtIndex;
      _currentEntry = _currentEducation.entries[_currentEntryIndex];
    } else {
      _currentEntry = FurtherEducationEntry();
    }
    yield EducationState.editing(
      education: _currentEducation,
      entryToEdit: _currentEntry,
      indexOfEntry: _currentEntryIndex,
    );
  }

  Stream<EducationState> _mapUpdateCashedEntry(
      _UpdateCashedEntry event) async* {
    _currentEntry = event.entry;
  }

  Stream<EducationState> _mapSaveCashedEntry(_SaveCashedEntry event) async* {
    yield EducationState.saving();
    FurtherEducation educationBeforeEdit = _currentEducation.copyWith();
    if (_currentEntryIndex != null) {
      _currentEducation.entries[_currentEntryIndex] = _currentEntry;
    } else {
      _currentEducation.entries.add(_currentEntry);
    }
    final mayBeFailure = await dao.save(_currentEducation);
    yield mayBeFailure.fold(
      (failure) => EducationState.editing(
        education: educationBeforeEdit,
        entryToEdit: _currentEntry,
        failed: true,
        failure: failure,
      ),
      (_) => EducationState.viewing(education: _currentEducation),
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
