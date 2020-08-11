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
    );
  }

  Stream<EducationState> _mapLoad(_Load event) async* {
    yield EducationState.loading();
    final failureOrEducation = await dao.load();
    yield failureOrEducation.fold(
      (failure) => EducationState.viewing(failed: true, failure: failure),
      (education) => EducationState.viewing(),
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
      (_) => EducationState.viewing(),
    );
  }

  Stream<EducationState> _mapDelete(_Delete event) {
    //Todo implement _mapDelete
  }
}
