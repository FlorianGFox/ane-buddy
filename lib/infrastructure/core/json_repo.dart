import 'package:flutter/foundation.dart';

abstract class JsonRepo {
  Future<void> save({
    @required String table,
    @required String key,
    @required String value,
  });
  Future<void> update({
    @required String table,
    @required String key,
    @required String value,
  });
  Future<String> load({
    @required String table,
    @required String key,
  });
  Future<void> dispose();
}
