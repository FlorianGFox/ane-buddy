import 'package:hive/hive.dart';

class HiveRepo {
  final Box hiveBox;

  HiveRepo.box(this.hiveBox);

  HiveRepo.name(String boxName) : hiveBox = Hive.box(boxName);

  void save(String key, String value) {
    hiveBox.put(key, value);
  }

  dynamic load(String key) {
    return hiveBox.get(key);
  }

  void delete(String key) {
    hiveBox.delete(key);
  }
}
