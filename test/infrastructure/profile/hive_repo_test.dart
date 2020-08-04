import 'package:ane_buddy/infrastructure/profile/hive_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';

class MockBox extends Mock implements Box {}

void main() {
  MockBox mockBox;
  HiveRepo repo;

  setUp(() {
    mockBox = MockBox();
    repo = HiveRepo.box(mockBox);
  });

  group('Save', () {
    final String key = 'testKey';
    final String value = 'testJson';

    test('Calls box.put', () async {
      //arrange
      //act
      repo.save(key, value);
      //assert
      verify(mockBox.put(key, value));
    });
  });

  group('Load', () {
    final String key = 'testKey';
    final String value = 'testJson';
    test('Calls box.get with key', () {
      //act
      repo.load(key);
      //assert
      verify(mockBox.get(key));
    });

    test('Returns value', () async {
      //arrange
      when(mockBox.get(any)).thenReturn(value);
      //act
      var result = await repo.load(key);
      //assert
      expect(result, value);
    });
  });

  group('Delete', () {
    final String key = 'testKey';
    test('Calls box.delete', () async {
      //arrange
      //act
      repo.delete(key);
      //assert
      verify(mockBox.delete(key));
    });
  });
}
