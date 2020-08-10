import 'package:ane_buddy/application/education/education_bloc.dart';
import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/education/entities/further_education.dart';
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

  group('Save event', () {
    FurtherEducation tEducation = FurtherEducation([]);
    test('Calls repo.save with education object.', () async {
      //arrange
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(EducationEvent.save(tEducation));
      await untilCalled(mockDao.save(any));
      //assert
      verify(mockDao.save(tEducation));
    });

    test('Emits [Saving, Viewing] if no failure.', () async {
      //arrange
      final expected = [EducationState.saving(), EducationState.viewing()];
      when(mockDao.save(any)).thenAnswer((_) async => Right(null));
      //act
      bloc.add(EducationEvent.save(tEducation));
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });

    test('Emits [Saving, Editing] with failure if failure happens.', () async {
      //arrange
      final expectedFailure = RepoFailure.unknown();
      final expected = [
        EducationState.saving(),
        EducationState.editing(
          failed: true,
          failure: expectedFailure,
        )
      ];
      when(mockDao.save(any)).thenAnswer((_) async => Left(expectedFailure));
      //act
      bloc.add(EducationEvent.save(tEducation));
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });
  });
}
