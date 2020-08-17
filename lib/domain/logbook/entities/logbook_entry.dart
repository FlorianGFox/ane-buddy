import 'package:freezed_annotation/freezed_annotation.dart';

part 'logbook_entry.freezed.dart';
part 'logbook_entry.g.dart';

@freezed
abstract class LogbookEntry with _$LogbookEntry {
  const factory LogbookEntry(String text, List<String> dates, int max) =
      _LogbookEntry;
  factory LogbookEntry.fromJson(Map<String, dynamic> json) =>
      _$LogbookEntryFromJson(json);
}
