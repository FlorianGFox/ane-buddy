part of 'education_bloc.dart';

@freezed
abstract class EducationEvent with _$EducationEvent {
  const factory EducationEvent.load() = _Load;
  const factory EducationEvent.edit() = _Edit;
  const factory EducationEvent.save() = _Save;
  const factory EducationEvent.delete() = _Delete;
}
