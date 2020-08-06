// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$_$_ProfileFromJson(Map<String, dynamic> json) {
  return _$_Profile(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    birthday: json['birthday'] as String,
    birthPlace: json['birthPlace'] as String,
    hasDrMed: json['hasDrMed'] as bool,
    otherDegrees: json['otherDegrees'] as String,
    hasForeignDegree: json['hasForeignDegree'] as bool,
    foreignDegrees: json['foreignDegrees'] as String,
    medicalExamDate: json['medicalExamDate'] as String,
    dentalExamDate: json['dentalExamDate'] as String,
    approvalDate: json['approvalDate'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthday': instance.birthday,
      'birthPlace': instance.birthPlace,
      'hasDrMed': instance.hasDrMed,
      'otherDegrees': instance.otherDegrees,
      'hasForeignDegree': instance.hasForeignDegree,
      'foreignDegrees': instance.foreignDegrees,
      'medicalExamDate': instance.medicalExamDate,
      'dentalExamDate': instance.dentalExamDate,
      'approvalDate': instance.approvalDate,
    };
