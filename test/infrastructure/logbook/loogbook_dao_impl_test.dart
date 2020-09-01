import 'dart:io';

import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/repositories/logbook_dao.dart';
import 'package:ane_buddy/infrastructure/core/json_map_dao.dart';
import 'package:ane_buddy/infrastructure/logbook/loogbook_dao_impl.dart';
import 'package:ane_buddy/infrastructure/logbook/logbook_content_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockJsonMapDao extends Mock implements JsonMapDao {}

class MockLogbookContentRepo extends Mock implements LogbookContentRepo {}

void main() {
  LogbookDao dao;
  MockJsonMapDao mockDao;
  MockLogbookContentRepo mockContentRepo;

  setUp(() {
    mockDao = MockJsonMapDao();
    mockContentRepo = MockLogbookContentRepo();
    dao = LogbookDaoImpl(mockDao, mockContentRepo);
  });

  group('Save', () {
    Logbook tLogbook = Logbook([]);
    test('Calls jsonMapDao.save', () async {
      //arrange
      //act
      dao.save(tLogbook);
      //assert
      verify(mockDao.save(tLogbook.toJson(), any, any));
    });

    test('Returns result from other dao.', () async {
      //arrange
      final Either<RepoFailure, void> mockDaoResult = Right(null);
      when(mockDao.save(any, any, any)).thenAnswer((_) async => mockDaoResult);
      //act
      final result = await dao.save(tLogbook);
      //assert
      expect(result, mockDaoResult);
    });
  });

  group('Load', () {
    Logbook tLogbook = Logbook([]);
    test('Returns object from jsonMapDao.load.', () async {
      //arrange
      final Either<RepoFailure, Map<String, dynamic>> mockAnswer =
          Right(tLogbook.toJson());
      when(mockDao.load(any, any)).thenAnswer((_) async => mockAnswer);
      //act
      final result = await dao.load();
      //assert
      expect(result, Right(tLogbook));
    });

    test('Returns failure from jsonMapDao.load.', () async {
      //arrange

      final Either<RepoFailure, Map<String, dynamic>> mockAnswer =
          Left(RepoFailure.notFound());
      when(mockDao.load(any, any)).thenAnswer((_) async => mockAnswer);
      //act
      final result = await dao.load();
      //assert
      expect(result, mockAnswer);
    });
  });
  group('Dispose', () {
    test('Calls jsonMapDao.dispose()', () async {
      //arrange
      //act
      await dao.dispose();
      //assert
      verify(mockDao.dispose());
    });
  });

  group('LoadInital', () {
    Logbook tLogbook = Logbook([]);
    IOException tException = FileSystemException();
    test('Returns failure when exception happens.', () async {
      //arrange
      when(mockContentRepo.load()).thenThrow(tException);
      //act
      final result = await dao.loadInitial();
      //assert
      expect(result, Left(RepoFailure.notFound()));
    });

    test('Returns result from content repo.', () async {
      //arrange
      when(mockContentRepo.load())
          .thenAnswer((realInvocation) async => tLogbook);
      //act
      final result = await dao.loadInitial();
      //assert
      expect(result, Right(tLogbook));
    });
  });
}
