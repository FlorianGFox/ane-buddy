// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logbook_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_LogbookEntry _$_$_LogbookEntryFromJson(Map<String, dynamic> json) {
  return _$_LogbookEntry(
    json['text'] as String,
    (json['dates'] as List)?.map((e) => e as String)?.toList(),
    json['max'] as int,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_LogbookEntryToJson(_$_LogbookEntry instance) =>
    <String, dynamic>{
      'text': instance.text,
      'dates': instance.dates,
      'max': instance.max,
    };
