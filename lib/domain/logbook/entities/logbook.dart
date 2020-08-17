import 'package:freezed_annotation/freezed_annotation.dart';

import 'logbook_list.dart';

part 'logbook.freezed.dart';
part 'logbook.g.dart';

@freezed
abstract class Logbook with _$Logbook {
  const factory Logbook(String name, List<LogbookList> lists) = _Logbook;
  factory Logbook.fromJson(Map<String, dynamic> json) =>
      _$LogbookFromJson(json);
}
