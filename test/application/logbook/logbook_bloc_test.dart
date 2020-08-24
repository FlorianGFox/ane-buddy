import 'package:ane_buddy/application/logbook/logbook_bloc.dart';
import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook_entry.dart';
import 'package:ane_buddy/domain/logbook/repositories/logbook_dao.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockLogbookDao extends Mock implements LogbookDao {}

void main() {
  MockLogbookDao mockDao;
  LogbookBloc bloc;

  setUp(() {
    mockDao = MockLogbookDao();
    bloc = LogbookBloc(mockDao);
  });

  group('Load,', () {
    Logbook tLogbook = Logbook([]);
    test('dao.load() is called.', () async {
      //arrange
      when(mockDao.load()).thenAnswer((_) async => Right(tLogbook));
      //act
      bloc.add(LogbookEvent.load());
      await untilCalled(mockDao.load());
      //assert
      verify(mockDao.load());
    });

    test('[Loading, Viewing] is emitted, if no failure happened.', () async {
      //arrange
      final expected = [
        LogbookState.loading(),
        LogbookState.viewing(logbook: tLogbook)
      ];
      when(mockDao.load()).thenAnswer((_) async => Right(tLogbook));
      //act
      bloc.add(LogbookEvent.load());
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });

    test(
        '[Loading, Viewing] is emitted with correct failure a failure happend.',
        () async {
      //arrange
      final expectedFailure = RepoFailure.unknown();
      final expected = [
        LogbookState.loading(),
        LogbookState.viewing(
          logbook: Logbook([]),
          failed: true,
          failure: expectedFailure,
        )
      ];
      when(mockDao.load()).thenAnswer((_) async => Left(expectedFailure));
      //act
      bloc.add(LogbookEvent.load());
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });
  });

  group('Edit', () {
    LogbookEntry tEntry = LogbookEntry('entry', [], 10);
    Logbook tLogbook = Logbook([]);
    test('state editing is emitted with given further education element.',
        () async {
      //arrange
      final tExpected = [
        LogbookState.editing(
          logbook: tLogbook,
          entry: tEntry,
        )
      ];
      //act
      bloc.add(LogbookEvent.edit(tLogbook, tEntry));
      //assert
      expectLater(bloc, emitsInOrder(tExpected));
    });
  });

  group('Save', () {
    Logbook tLogbook = Logbook([]);
    LogbookEntry tEntry = LogbookEntry('text', [], 10);
    test('dao.save() is called with correct education object.', () async {
      //arrange
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(LogbookEvent.save(tLogbook, tEntry));
      await untilCalled(mockDao.save(any));
      //assert
      verify(mockDao.save(tLogbook));
    });

    test('[Saving, Viewing] is emitted, if no failure happened.', () async {
      //arrange
      final expected = [
        LogbookState.saving(),
        LogbookState.viewing(logbook: tLogbook),
      ];
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(LogbookEvent.save(tLogbook, tEntry));
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });

    test(
        '[Saving, Editing] is emitted with correct failure if a failure happens.',
        () async {
      //arrange
      final expectedFailure = RepoFailure.unknown();
      final expected = [
        LogbookState.saving(),
        LogbookState.editing(
          logbook: tLogbook,
          entry: tEntry,
          failed: true,
          failure: expectedFailure,
        )
      ];
      when(mockDao.save(any)).thenAnswer((_) async => Left(expectedFailure));
      //act
      bloc.add(LogbookEvent.save(tLogbook, tEntry));
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });
  });
}
