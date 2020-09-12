import 'package:ane_buddy/infrastructure/logbook/logbook_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  LogbookMapper mapper;

  setUp(() {
    mapper = LogbookMapper();
  });

  group('String to logbook', () {
    test('Returns a Logbook', () async {
      //arrange
      //act
      final result = mapper.stringToLogbook('# test string');
      //assert
      expect(result, isNotNull);
    });

    test('Returns a Logbook with a list when subtitle is given', () async {
      //arrange
      String tSubtitle = 'Subtitle';
      String tString = '## $tSubtitle';
      //act
      final result = mapper.stringToLogbook(tString);
      //assert
      expect(result.lists.length, 1);
      expect(result.lists[0].name, tSubtitle);
    });

    test('Returns a Logbook with multiple list when subtitle is given',
        () async {
      //arrange
      String tSubtitle = 'Subtitle';
      String tString = '## $tSubtitle\nTest\nTest\n## Subtitle2\n### Subtitle3';
      //act
      final result = mapper.stringToLogbook(tString);
      //assert
      expect(result.lists.length, 3);
    });

    test('Returns a Logbook with multiple entries when correct text is given',
        () async {
      //arrange
      String tSubtitle = 'Subtitle';
      String tString = '## $tSubtitle\nTest\nTest\n## Subtitle2\n### Subtitle3';
      //act
      final result = mapper.stringToLogbook(tString);
      //assert
      expect(result.lists[0].entries.length, 2);
    });

    test(
        'Returns a Logbook with multiple entries with correct settings when correct text is given',
        () async {
      //arrange
      String tSubtitle = 'Subtitle';
      String tEntry1 = 'Test1';
      int tEntry2Target = 1300;
      String tEntry2 = 'Test2 1.300';
      String tString =
          '## $tSubtitle\n$tEntry1\n$tEntry2\n## Subtitle2\n### Subtitle3';
      //act
      final result = mapper.stringToLogbook(tString);
      //assert
      expect(result.lists[0].entries[0].text, tEntry1);
      expect(result.lists[0].entries[0].max, 1);
      expect(result.lists[0].entries[1].text, tEntry2);
      expect(result.lists[0].entries[1].max, tEntry2Target);
    });

    test('Returns correct logbook with real data', () async {
      //arrange
      String data = """
## Anästhesie bei ambulanten Patienten
Mindestanforderungen für die Anwendung anästhesiologischer Verfahren bei ambulanten Eingriffen
Durchführung von Anästhesien bei ambulanten Eingriffen unter Beachtung der Rahmenbedingungen und des spezifischen Risikos sowie Sicherstellung der perioperativen Versorgung 50

## Anästhesiologische Verfahren außerhalb des Operationssaales
Gewährleisten von Sicherheitsstandards im Zusammenhang mit anästhesiologischen Verfahren bei CT-und MRT-Untersuchungen oder anderen minimal-invasiven und diagnostischen Eingriffen
Transport des Patienten zu Untersuchungen und Eingriffen

## Intensivmedizin
Diagnostik und Therapie vital bedrohlicher Erkrankungen und Zustände auf einer Intensivstation oder Intermediate Care Station, insbesondere bei
- respiratorischer Insuffizienz
- kardialer Insuffizienz
      """;
      //act
      final result = mapper.stringToLogbook(data);
      //assert
      expect(result.lists.length, 3);
      expect(result.lists[0].entries[0].max, 1);
      expect(result.lists[0].entries[1].max, 50);
      expect(result.lists[2].entries.length, 3);
      expect(result.lists[2].entries[2].text, '- kardialer Insuffizienz');
    });
  });
}
