import '../../domain/logbook/entities/logbook.dart';
import '../../domain/logbook/entities/logbook_entry.dart';
import '../../domain/logbook/entities/logbook_list.dart';

class LogbookMapper {
  Logbook stringToLogbook(String string) {
    //final mainHeaderRegex = RegExp(r'^#[^#](.+)');

    Logbook logbook = Logbook([]);
    LogbookList currentList;

    List<String> splited = string.split('\n');
    splited.forEach((element) {
      if (_containsNotJustWhiteSpace(element)) {
        if (_isSubHeader(element)) {
          currentList = _createLogList(element);
          logbook.lists.add(currentList);
        } else if (_isEntry(element)) {
          currentList.entries.add(_createEntry(element));
        }
      }
    });
    return logbook;
  }

  bool _isSubHeader(String text) {
    final subHeaderPrefix = RegExp(r'^##(.+)');
    return subHeaderPrefix.hasMatch(text);
  }

  bool _isEntry(String text) {
    final entryRegex = RegExp(r'^[^#\n].+');
    return entryRegex.hasMatch(text);
  }

  LogbookEntry _createEntry(text) {
    final entryRegex = RegExp(r'^[^#\n].+');
    final targetRegex = RegExp(r'\d\.?\d+\s?$');

    Match entryMatch = entryRegex.firstMatch(text);
    int target = 1;
    if (targetRegex.hasMatch(text)) {
      Match targetMatch = targetRegex.firstMatch(text);
      target = int.parse(targetMatch.group(0).replaceAll('.', '').trim());
    }
    return LogbookEntry(entryMatch.group(0).trim(), [], target);
  }

  LogbookList _createLogList(String text) {
    final subHeaderRegex = RegExp(r'^##(.+)');
    String subHeader = subHeaderRegex.firstMatch(text).group(1).trim();
    return LogbookList(subHeader, []);
  }

  bool _containsNotJustWhiteSpace(String text) {
    final nonWhiteSpaceRegex = RegExp(r'\S');
    return nonWhiteSpaceRegex.hasMatch(text);
  }
}
