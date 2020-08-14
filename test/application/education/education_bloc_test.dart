import 'package:ane_buddy/application/education/education_bloc.dart';
import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/education/entities/further_education.dart';
import 'package:ane_buddy/domain/education/entities/further_education_entry.dart';
import 'package:ane_buddy/domain/education/repositories/education_dao.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockEducationDao extends Mock implements EducationDao {}

void main() {
  // ignore: close_sinks
  EducationBloc bloc;
  MockEducationDao mockDao;

  setUp(() {
    mockDao = MockEducationDao();
    bloc = EducationBloc(mockDao);
  });

  group('When EducationEvent.save is added to EducationBloc,', () {
    FurtherEducationEntry tEntry = FurtherEducationEntry();
    FurtherEducation tEducation = FurtherEducation([tEntry]);
    test('dao.save() is called with correct education object.', () async {
      //arrange
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(EducationEvent.save(tEducation, tEntry));
      await untilCalled(mockDao.save(any));
      //assert
      verify(mockDao.save(tEducation));
    });

    test('[Saving, Viewing] is emitted, if no failure happened.', () async {
      //arrange
      final expected = [
        EducationState.saving(),
        EducationState.viewing(education: tEducation),
      ];
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(EducationEvent.save(tEducation, tEntry));
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });

    test(
        '[Saving, Editing] is emitted with correct failure if a failure happens.',
        () async {
      //arrange
      final expectedFailure = RepoFailure.unknown();
      final expected = [
        EducationState.saving(),
        EducationState.editing(
          education: tEducation,
          entryToEdit: tEntry,
          failed: true,
          failure: expectedFailure,
        )
      ];
      when(mockDao.save(any)).thenAnswer((_) async => Left(expectedFailure));
      //act
      bloc.add(EducationEvent.save(tEducation, tEntry));
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });
  });

  group('When EducationEvent.load is added to EducationBloc,', () {
    FurtherEducation tEducation = FurtherEducation([]);
    test('dao.load() is called.', () async {
      //arrange
      when(mockDao.load()).thenAnswer((_) async => Right(tEducation));
      //act
      bloc.add(EducationEvent.load());
      await untilCalled(mockDao.load());
      //assert
      verify(mockDao.load());
    });

    test('[Loading, Viewing] is emitted, if no failure happened.', () async {
      //arrange
      final expected = [
        EducationState.loading(),
        EducationState.viewing(education: tEducation)
      ];
      when(mockDao.load()).thenAnswer((_) async => Right(tEducation));
      //act
      bloc.add(EducationEvent.load());
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });

    test(
        '[Loading, Viewing] is emitted with correct failure a failure happend.',
        () async {
      //arrange
      final expectedFailure = RepoFailure.unknown();
      final expected = [
        EducationState.loading(),
        EducationState.viewing(
          failed: true,
          failure: expectedFailure,
        )
      ];
      when(mockDao.load()).thenAnswer((_) async => Left(expectedFailure));
      //act
      bloc.add(EducationEvent.load());
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });
  });

  group('When EducationEvent.edit is added to EducationBloc,', () {
    FurtherEducationEntry tEntry = FurtherEducationEntry();
    FurtherEducation tEducation = FurtherEducation([tEntry]);
    test('state editing is emitted with given further education element.',
        () async {
      //arrange
      final tExpected = [
        EducationState.editing(
          education: tEducation,
          entryToEdit: tEntry,
        )
      ];
      //act
      bloc.add(EducationEvent.edit(tEducation, tEntry));
      //assert
      expectLater(bloc, emitsInOrder(tExpected));
    });
  });

  group('When EducationEvent.delete is added to EducationBloc', () {
    FurtherEducationEntry tEntry = FurtherEducationEntry();
    FurtherEducation tEducation = FurtherEducation([tEntry]);
    FurtherEducation tEducationDeleted = FurtherEducation([]);
    test('states [Deleting, Saving, Viewing] are emitted.', () async {
      //arrange
      final tExpected = [
        EducationState.deleting(),
        EducationState.saving(),
        EducationState.viewing(education: tEducationDeleted)
      ];
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(EducationEvent.delete(tEducation, tEntry));
      //assert
      expectLater(bloc, emitsInOrder(tExpected));
    });

    test('it calls dao.save() with the entry removed.', () async {
      //arrange
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(EducationEvent.delete(tEducation, tEntry));
      await untilCalled(mockDao.save(any));
      //assert
      verify(mockDao.save(tEducationDeleted));
    });

    test(
        'states [Deleting, Saving, Viewing] are emitted. With state Viewing containing a invalid state failure, if the entry to delete was not found.',
        () async {
      //arrange
      final tExpected = [
        EducationState.deleting(),
        EducationState.viewing(
          education: FurtherEducation([]),
          failed: true,
          failure: RepoFailure.invalidState(),
        ),
      ];
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(EducationEvent.delete(FurtherEducation([]), tEntry));
      //assert
      expectLater(bloc, emitsInOrder(tExpected));
    });

    test(
        'and a failure happens while saving, states [Deleting, Saving, Viewing] are emitted. With state Viewing containing the failure.',
        () async {
      //arrange
      RepoFailure tFailure = RepoFailure.unknown();
      final tExpected = [
        EducationState.deleting(),
        EducationState.saving(),
        EducationState.viewing(
          education: tEducation,
          failed: true,
          failure: tFailure,
        ),
      ];
      when(mockDao.save(any)).thenAnswer((_) async => Left(tFailure));
      //act
      bloc.add(EducationEvent.delete(tEducation, tEntry));
      //assert
      expectLater(bloc, emitsInOrder(tExpected));
    });
  });
}
