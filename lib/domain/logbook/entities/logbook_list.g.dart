// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logbook_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_LogbookList _$_$_LogbookListFromJson(Map<String, dynamic> json) {
  return _$_LogbookList(
    json['name'] as String,
    (json['entries'] as List)
        ?.map((e) =>
            e == null ? null : LogbookEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_LogbookListToJson(_$_LogbookList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'entries': instance.entries,
    };
