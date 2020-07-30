import 'package:hive/hive.dart';

import 'profile_repo.dart';

class HiveRepo implements ProfileRepo {
  Box _hiveBox;
  String _boxName;

  HiveRepo.box(Box hiveBox) {
    _hiveBox = hiveBox;
  }

  HiveRepo.name(String boxName) {
    _boxName = boxName;
  }

  Future<Box> _openBox(String boxName) async {
    return Hive.openBox(boxName);
  }

  @override
  Future<void> save(String key, String value) async {
    if (_hiveBox == null) {
      _hiveBox = await _openBox(_boxName);
    }
    _hiveBox.put(key, value);
  }

  @override
  Future<void> update(String key, String value) async {
    if (_hiveBox == null) {
      _hiveBox = await _openBox(_boxName);
    }
    save(key, value);
  }

  @override
  Future<String> load(String key) async {
    if (_hiveBox == null) {
      _hiveBox = await _openBox(_boxName);
    }
    return _hiveBox.get(key);
  }

  void delete(String key) async {
    if (_hiveBox == null) {
      _hiveBox = await _openBox(_boxName);
    }
    _hiveBox.delete(key);
  }

  void dispose() {
    Hive.close();
  }
}
