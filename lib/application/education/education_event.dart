part of 'education_bloc.dart';

@freezed
abstract class EducationEvent with _$EducationEvent {
  const factory EducationEvent.load() = _Load;
  const factory EducationEvent.edit(
    FurtherEducation education, [
    FurtherEducationEntry entry,
  ]) = _Edit;
  const factory EducationEvent.save(
    FurtherEducation education,
    FurtherEducationEntry newEntry,
  ) = _Save;
  const factory EducationEvent.delete() = _Delete;
  const factory EducationEvent.view(
    FurtherEducation education,
  ) = _View;
}
