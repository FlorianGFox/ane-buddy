import 'package:freezed_annotation/freezed_annotation.dart';

part 'further_education_entry.freezed.dart';
part 'further_education_entry.g.dart';

@freezed
abstract class FurtherEducationEntry with _$FurtherEducationEntry {
  const factory FurtherEducationEntry({
    String institution,
    String place,
    String educator,
    String topic,
    String startDate,
    String endDate,
  }) = _FurtherEducationEntry;
  factory FurtherEducationEntry.fromJson(Map<String, dynamic> json) =>
      _$FurtherEducationEntryFromJson(json);
}
