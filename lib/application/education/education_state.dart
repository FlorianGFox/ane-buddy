part of 'education_bloc.dart';

@freezed
abstract class EducationState with _$EducationState {
  const factory EducationState.initial() = _Initial;
  const factory EducationState.loading() = _Loading;
  const factory EducationState.viewing() = _Viewing;
  const factory EducationState.editing() = _Editing;
  const factory EducationState.deleting() = _Deleting;
  const factory EducationState.saving() = _Saving;
}
