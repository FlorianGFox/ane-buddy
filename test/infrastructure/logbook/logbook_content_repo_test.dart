import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/infrastructure/logbook/logbook_content_repo.dart';
import 'package:ane_buddy/infrastructure/logbook/logbook_mapper.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockAssetBundle extends Mock implements AssetBundle {}

class MockLogbookMapper extends Mock implements LogbookMapper {}

void main() {
  MockAssetBundle assetBundle;
  MockLogbookMapper logMapper;
  LogbookContentRepo repo;

  setUp(() {
    assetBundle = MockAssetBundle();
    logMapper = MockLogbookMapper();
    repo = LogbookContentRepo(logMapper, assetBundle);
  });

  group('Load', () {
    final specificPath = 'assets/data/spezifische_inhalte_anaesthesiologie.txt';
    final generalPath = 'assets/data/allgemeine_inhalte.txt';
    final tString1 = 's1';
    final tString2 = 's2';

    test('Calls asset bundle twice', () async {
      //arrange
      when(assetBundle.loadString(generalPath))
          .thenAnswer((realInvocation) async => tString1);
      when(assetBundle.loadString(specificPath))
          .thenAnswer((realInvocation) async => tString2);
      //act
      await repo.load();
      //assert
      verify(assetBundle.loadString('assets/data/allgemeine_inhalte.txt'));
      verify(assetBundle
          .loadString('assets/data/spezifische_inhalte_anaesthesiologie.txt'));
    });

    test('Calls logbook mapper with correct string.', () async {
      //arrange

      when(assetBundle.loadString(generalPath))
          .thenAnswer((realInvocation) async => tString1);
      when(assetBundle.loadString(specificPath))
          .thenAnswer((realInvocation) async => tString2);
      //act
      await repo.load();
      //assert
      verify(logMapper.stringToLogbook(tString1 + '\n' + tString2));
    });

    test('Returns logbook from mapper.', () async {
      //arrange
      Logbook tLogbook = Logbook([]);
      when(assetBundle.loadString(generalPath))
          .thenAnswer((realInvocation) async => tString1);
      when(assetBundle.loadString(specificPath))
          .thenAnswer((realInvocation) async => tString2);
      when(logMapper.stringToLogbook(any)).thenReturn(tLogbook);
      //act
      final result = await repo.load();
      //assert
      expect(result, tLogbook);
    });
  });
}
