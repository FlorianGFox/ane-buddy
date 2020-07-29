import 'package:hive/hive.dart';

import 'profile_repo.dart';

class HiveRepo implements ProfileRepo {
  Box _hiveBox;

  HiveRepo.box(Box hiveBox) {
    _hiveBox = hiveBox;
  }

  HiveRepo.name(String boxName) {
    openBox(boxName);
  }

  void openBox(String boxName) async {
    _hiveBox = await Hive.openBox(boxName);
  }

  @override
  void save(String key, String value) {
    _hiveBox.put(key, value);
  }

  @override
  void update(String key, String value) {
    save(key, value);
  }

  @override
  String load(String key) {
    return _hiveBox.get(key);
  }

  void delete(String key) {
    _hiveBox.delete(key);
  }

  void dispose() {
    Hive.close();
  }
}
