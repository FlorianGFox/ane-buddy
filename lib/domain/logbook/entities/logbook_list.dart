import 'package:freezed_annotation/freezed_annotation.dart';

import 'logbook_entry.dart';

part 'logbook_list.freezed.dart';
part 'logbook_list.g.dart';

@freezed
abstract class LogbookList with _$LogbookList {
  const factory LogbookList(String name, List<LogbookEntry> entries) =
      _LogbookList;
  factory LogbookList.fromJson(Map<String, dynamic> json) =>
      _$LogbookListFromJson(json);
}
