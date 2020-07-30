abstract class ProfileRepo {
  Future<void> save(String key, String value);
  Future<void> update(String key, String value);
  Future<String> load(String key);
}
