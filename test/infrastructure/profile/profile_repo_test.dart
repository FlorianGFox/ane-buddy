import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/profile/entities/profile.dart';
import 'package:ane_buddy/infrastructure/core/json_map_dao.dart';
import 'package:ane_buddy/infrastructure/profile/profile_dao_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockJsonMapDao extends Mock implements JsonMapDao {}

void main() {
  MockJsonMapDao mockJsonMapDao;
  ProfileDaoImpl dao;

  setUp(() {
    mockJsonMapDao = MockJsonMapDao();
    dao = ProfileDaoImpl(mockJsonMapDao);
  });

  group('Save', () {
    Profile tProfile = Profile(
      birthPlace: 'tBirthplace',
      firstName: 'tFirstName',
      lastName: 'tLastName',
      birthday: DateTime(1995).toString(),
      hasDrMed: true,
    );

    test('Calls jsonDao.save', () async {
      //arrange
      when(mockJsonMapDao.save(any, any, any))
          .thenAnswer((_) async => Right(null));
      //act
      dao.save(tProfile);
      //assert
      verify(mockJsonMapDao.save(tProfile.toJson(), any, any));
    });

    test('Calls returns Right(null) when successful.', () async {
      //arrange
      when(mockJsonMapDao.save(any, any, any))
          .thenAnswer((_) async => Right(null));
      //act
      var result = await dao.save(tProfile);
      //assert
      expect(result, Right(null));
    });

    test(
        'Calls returns Left(RepoFailure.unknown) when unknown exception happens.',
        () async {
      //arrange
      when(mockJsonMapDao.save(any, any, any)).thenThrow(Exception());
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
      when(mockJsonMapDao.load(any, any))
          .thenAnswer((_) async => Right(tProfile.toJson()));
      //act
      var result = await dao.load();
      //assert
      expect(result, Right(tProfile));
    });
    test('Returns Left(RepoFailure.unknown) when unknown exception happens.',
        () async {
      //arrange
      when(mockJsonMapDao.load(any, any)).thenThrow(Exception());
      //act
      var result = await dao.load();
      //assert
      expect(result, Left(RepoFailure.unknown()));
    });
  });
}
