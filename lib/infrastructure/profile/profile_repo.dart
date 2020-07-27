abstract class ProfileRepo {
  void save(String key, String value);
  void update(String key, String value);
  String load(String key);
}
