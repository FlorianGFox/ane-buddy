import 'package:freezed_annotation/freezed_annotation.dart';

part 'further_education_entry.freezed.dart';
part 'further_education_entry.g.dart';

@freezed
abstract class FutherEducationEntry with _$FutherEducationEntry {
  const factory FutherEducationEntry({
    String institution,
    String place,
    String educator,
    String topic,
    String startDate,
    String endDate,
  }) = _FutherEducationEntry;
  factory FutherEducationEntry.fromJson(Map<String, dynamic> json) =>
      _$FutherEducationEntryFromJson(json);
}
