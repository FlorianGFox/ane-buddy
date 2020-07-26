import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    String firstName,
    String lastName,
    DateTime birthday,
    String birthPlace,
    bool hasDrMed,
    String otherDegrees,
    bool hasForeignDegree,
    bool foreignDegrees,
    DateTime medicalExamDate,
    DateTime dentalExamDate,
    DateTime approvalDate,
  }) = _Profile;
}
