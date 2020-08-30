part of 'education_bloc.dart';

@freezed
abstract class EducationEvent with _$EducationEvent {
  const factory EducationEvent.load() = _Load;
  const factory EducationEvent.edit({
    FurtherEducation education,
    FurtherEducationEntry entry,
    int editEntryAtIndex,
  }) = _Edit;
  const factory EducationEvent.updateCashedEntry(FurtherEducationEntry entry) =
      _UpdateCashedEntry;
  const factory EducationEvent.saveCashedEntry() = _SaveCashedEntry;
  const factory EducationEvent.delete(
    FurtherEducation education,
    FurtherEducationEntry entryToDelete,
  ) = _Delete;
  const factory EducationEvent.view(
    FurtherEducation education,
  ) = _View;
}
