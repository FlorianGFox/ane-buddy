// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logbook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Logbook _$_$_LogbookFromJson(Map<String, dynamic> json) {
  return _$_Logbook(
    (json['lists'] as List)
        ?.map((e) =>
            e == null ? null : LogbookList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_LogbookToJson(_$_Logbook instance) =>
    <String, dynamic>{
      'lists': instance.lists,
    };
