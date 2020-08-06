import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'json_repo.dart';

@Injectable(as: JsonRepo)
class HiveRepo implements JsonRepo {
  @override
  Future<void> save({
    @required String table,
    @required String key,
    @required String value,
  }) async {
    Box hiveBox = await _openBox(table);

    hiveBox.put(key, value);
  }

  @override
  Future<void> update(
      {@required String table,
      @required String key,
      @required String value}) async {
    save(table: table, key: key, value: value);
  }

  @override
  Future<String> load({
    @required String table,
    @required String key,
  }) async {
    Box hiveBox = await _openBox(table);

    return hiveBox.get(key);
  }

  void delete({@required String table, @required String key}) async {
    Box hiveBox = await _openBox(table);

    hiveBox.delete(key);
  }

  @override
  Future<void> dispose() async {
    return Hive.close();
  }

  Future<Box> _openBox(String boxName) async {
    return Hive.openBox(boxName);
  }
}
