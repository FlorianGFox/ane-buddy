// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'further_education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_FurtherEducation _$_$_FurtherEducationFromJson(Map<String, dynamic> json) {
  return _$_FurtherEducation(
    (json['entries'] as List)
        ?.map((e) => e == null
            ? null
            : FurtherEducationEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_FurtherEducationToJson(
        _$_FurtherEducation instance) =>
    <String, dynamic>{
      'entries': instance.entries,
    };
