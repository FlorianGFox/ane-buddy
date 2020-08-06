import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'education_event.dart';
part 'education_state.dart';

part 'education_bloc.freezed.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  EducationBloc() : super(EducationState.initial());

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

  Stream<EducationState> _mapLoad(_Load event) {
    //Todo implement _mapLoad
  }
  Stream<EducationState> _mapEdit(_Edit event) {
    //Todo implement _mapEdit
  }
  Stream<EducationState> _mapSave(_Save event) {
    //Todo implement _mapSave
  }
  Stream<EducationState> _mapDelete(_Delete event) {
    //Todo implement _mapDelete
  }
}
