import 'package:freezed_annotation/freezed_annotation.dart';

import 'further_education_entry.dart';

part 'further_education.freezed.dart';
part 'further_education.g.dart';

@freezed
abstract class FurtherEducation with _$FurtherEducation {
  const factory FurtherEducation(List<FutherEducationEntry> entries) =
      _FurtherEducation;
  factory FurtherEducation.fromJson(Map<String, dynamic> json) =>
      _$FurtherEducationFromJson(json);
}
