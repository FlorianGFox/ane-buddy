import 'dart:convert';

import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/infrastructure/core/json_map_dao.dart';
import 'package:ane_buddy/infrastructure/core/json_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockJsonRepo extends Mock implements JsonRepo {}

void main() {
  JsonMapDao dao;
  MockJsonRepo mockRepo;

  setUp(() {
    mockRepo = MockJsonRepo();
    dao = JsonMapDao(mockRepo);
  });

  group('Save', () {
    Map<String, dynamic> tMap = Map();
    final tTable = 'tTable';
    final tKey = 'tKey';
    test('Calls repo.save', () async {
      //arrange
      //act
      dao.save(tMap, tTable, tKey);
      //assert
      verify(mockRepo.save(table: tTable, key: tKey, value: json.encode(tMap)));
    });

    test('Calls returns Right(null) when successful.', () async {
      //arrange
      //act
      var result = await dao.save(tMap, tTable, tKey);
      //assert
      expect(result, Right(null));
    });

    test(
        'Calls returns Left(RepoFailure.unknown) when unknown exception happens.',
        () async {
      //arrange
      when(mockRepo.save(
              table: anyNamed('table'),
              key: anyNamed('key'),
              value: anyNamed('value')))
          .thenThrow(Exception());
      //act
      var result = await dao.save(tMap, tTable, tKey);
      //assert
      expect(result, Left(RepoFailure.unknown()));
    });
  });

  group('Load', () {
    Map<String, dynamic> tMap = Map();
    final tTable = 'tTable';
    final tKey = 'tKey';
    test('Returns Right(map) from repo.', () async {
      //arrange
      when(mockRepo.load(table: anyNamed('table'), key: anyNamed('key')))
          .thenAnswer((_) async => jsonEncode(tMap));
      //act
      var loadResult = await dao.load(tTable, tKey);
      var result = loadResult.fold((l) => l, (r) => r);
      //assert
      expect(result, tMap);
    });
    test('Returns Left(RepoFailure.unknown) when unknown exception happens.',
        () async {
      //arrange
      when(mockRepo.load(table: anyNamed('table'), key: anyNamed('key')))
          .thenThrow(Exception());
      //act
      var result = await dao.load(tTable, tKey);
      //assert
      expect(result, Left(RepoFailure.unknown()));
    });
  });
}
