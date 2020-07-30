import 'package:ane_buddy/domain/profile/entities/profile.dart';
import 'package:ane_buddy/domain/profile/repositories/repo_failure.dart';
import 'package:ane_buddy/infrastructure/profile/hive_repo.dart';
import 'package:ane_buddy/infrastructure/profile/profile_dao_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'dart:convert';

class MockHiveRepo extends Mock implements HiveRepo {}

void main() {
  MockHiveRepo mockHive;
  ProfileDaoImpl dao;

  setUp(() {
    mockHive = MockHiveRepo();
    dao = ProfileDaoImpl.customRepo(mockHive);
  });

  group('Save', () {
    Profile tProfile = Profile(
      birthPlace: 'tBirthplace',
      firstName: 'tFirstName',
      lastName: 'tLastName',
      birthday: DateTime(1995).toString(),
      hasDrMed: true,
    );

    test('Calls repo.save', () async {
      //arrange
      //act
      dao.save(tProfile);
      //assert
      verify(mockHive.save(any, json.encode(tProfile.toJson())));
    });

    test('Calls returns Right(null) when successful.', () async {
      //arrange
      //act
      var result = await dao.save(tProfile);
      //assert
      expect(result, Right(null));
    });

    test(
        'Calls returns Left(RepoFailure.unknown) when unknown exception happens.',
        () async {
      //arrange
      when(mockHive.save(any, any)).thenThrow(Exception());
      //act
      var result = await dao.save(tProfile);
      //assert
      expect(result, Left(RepoFailure.unknown()));
    });
  });

  group('Load', () {
    Profile tProfile = Profile(
      birthPlace: 'tBirthplace',
      firstName: 'tFirstName',
      lastName: 'tLastName',
      birthday: DateTime(1995).toString(),
      hasDrMed: true,
    );
    test('Returns Right(profile) from repo.', () async {
      //arrange
      when(mockHive.load(any))
          .thenAnswer((_) async => jsonEncode(tProfile.toJson()));
      //act
      var result = await dao.load();
      //assert
      expect(result, Right(tProfile));
    });
    test('Returns Left(RepoFailure.unknown) when unknown exception happens.',
        () async {
      //arrange
      when(mockHive.load(any)).thenThrow(Exception());
      //act
      var result = await dao.load();
      //assert
      expect(result, Left(RepoFailure.unknown()));
    });
  });
}
