import 'package:ane_buddy/infrastructure/profile/profile_repo.dart';
import 'package:hive/hive.dart';

class HiveRepo implements ProfileRepo {
  final Box hiveBox;

  HiveRepo.box(this.hiveBox);

  HiveRepo.name(String boxName) : hiveBox = Hive.box(boxName);

  @override
  void save(String key, String value) {
    hiveBox.put(key, value);
  }

  @override
  void update(String key, String value) {
    save(key, value);
  }

  @override
  String load(String key) {
    return hiveBox.get(key);
  }

  void delete(String key) {
    hiveBox.delete(key);
  }
}
