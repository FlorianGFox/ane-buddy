import 'package:ane_buddy/application/profile/profile_bloc.dart';
import 'package:ane_buddy/domain/profile/entities/profile.dart';
import 'package:ane_buddy/domain/profile/repositories/profile_dao.dart';
import 'package:ane_buddy/domain/profile/repositories/repo_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockProfileDao extends Mock implements ProfileDao {}

void main() {
  MockProfileDao mockDao;
  // ignore: close_sinks
  ProfileBloc bloc;

  setUp(() {
    mockDao = MockProfileDao();
    bloc = ProfileBloc(profileDao: mockDao);
  });

  group('Save', () {
    Profile tProfile = Profile();

    test('Calls dao.save with profile', () async {
      //arrange
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(ProfileEvent.save(tProfile));
      await untilCalled(mockDao.save(tProfile));
      //assert
      verify(mockDao.save(tProfile));
    });

    List<ProfileState> expected = [
      ProfileState.saving(),
      ProfileState.ready(profile: tProfile, failed: false),
    ];
    test('Bloc emits [Saving, Ready].', () async {
      //arrange
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //assert
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(ProfileEvent.save(tProfile));
    });

    RepoFailure tFailure = RepoFailure.unknown();
    List<ProfileState> expectedWithFailure = [
      ProfileState.saving(),
      ProfileState.ready(
        profile: tProfile,
        failed: true,
        failure: tFailure,
      ),
    ];
    test('Bloc returns failure when failure happens.', () async {
      //arrange
      when(mockDao.save(any)).thenAnswer((_) async => Left(tFailure));
      //assert
      expectLater(bloc, emitsInOrder(expectedWithFailure));
      //act
      bloc.add(ProfileEvent.save(tProfile));
    });
  });

  group('Load', () {
    final tProfile = Profile();

    test('Calls dao.load', () async {
      //arrange
      when(mockDao.load())
          .thenAnswer((realInvocation) async => Right(tProfile));
      //act
      bloc.add(ProfileEvent.load());
      await untilCalled(mockDao.load());
      //assert
      verify(mockDao.load());
    });

    final expected = [
      ProfileState.loading(),
      ProfileState.ready(failed: false, profile: tProfile)
    ];
    test('Emits [Loading, Ready] with loaded profile when no error happens.',
        () async {
      //arrange
      when(mockDao.load())
          .thenAnswer((realInvocation) async => Right(tProfile));
      //assert
      expectLater(bloc, emitsInAnyOrder(expected));
      //act
      bloc.add(ProfileEvent.load());
    });

    final tFailure = RepoFailure.unknown();
    final expectedWithFailure = [
      ProfileState.loading(),
      ProfileState.ready(
        failed: true,
        profile: null,
        failure: tFailure,
      )
    ];
    test('Emits [Loading, Ready] with failure when error happens.', () async {
      //arrange
      when(mockDao.load()).thenAnswer((realInvocation) async => Left(tFailure));
      //assert
      expectLater(bloc, emitsInAnyOrder(expectedWithFailure));
      //act
      bloc.add(ProfileEvent.load());
    });
  });
}
