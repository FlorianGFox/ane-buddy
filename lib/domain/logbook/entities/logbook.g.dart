// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logbook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Logbook _$_$_LogbookFromJson(Map<String, dynamic> json) {
  return _$_Logbook(
    json['name'] as String,
    (json['lists'] as List)
        ?.map((e) =>
            e == null ? null : LogbookList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_LogbookToJson(_$_Logbook instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lists': instance.lists,
    };
