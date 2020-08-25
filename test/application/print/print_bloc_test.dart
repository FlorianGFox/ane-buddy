import 'package:ane_buddy/application/print/print_bloc.dart';
import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/education/entities/further_education.dart';
import 'package:ane_buddy/domain/education/repositories/education_dao.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/logbook/repositories/logbook_dao.dart';
import 'package:ane_buddy/domain/print/pdf_creator.dart';
import 'package:ane_buddy/domain/print/pdf_dao.dart';
import 'package:ane_buddy/domain/profile/entities/profile.dart';
import 'package:ane_buddy/domain/profile/repositories/profile_dao.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pdf/widgets.dart';

class MockPdfDao extends Mock implements PdfDao {}

class MockPdfCreator extends Mock implements PdfCreator {}

class MockProfileDao extends Mock implements ProfileDao {}

class MockEducationDao extends Mock implements EducationDao {}

class MockLogbookDao extends Mock implements LogbookDao {}

void main() {
  MockPdfDao mockPdfDao;
  MockPdfCreator mockPdfCreator;
  MockProfileDao mockProfileDao;
  MockEducationDao mockEducationDao;
  MockLogbookDao mockLogbookDao;
  // ignore: close_sinks
  PrintBloc bloc;

  setUp(() {
    mockPdfDao = MockPdfDao();
    mockPdfCreator = MockPdfCreator();
    mockProfileDao = MockProfileDao();
    mockEducationDao = MockEducationDao();
    mockLogbookDao = MockLogbookDao();
    bloc = PrintBloc(
      pdfDao: mockPdfDao,
      pdfCreator: mockPdfCreator,
      profileDao: mockProfileDao,
      educationDao: mockEducationDao,
      logbookDao: mockLogbookDao,
    );
  });

  group('Creating Pdf', () {
    Document tPdf = Document();
    Profile tProfile = Profile();
    Logbook tLogbook = Logbook([]);
    FurtherEducation tEducation = FurtherEducation([]);
    test('Calls pdfCreator.createPdf with profile and education from daos.',
        () async {
      //arrange
      when(mockProfileDao.load())
          .thenAnswer((realInvocation) async => Right(tProfile));
      when(mockEducationDao.load())
          .thenAnswer((realInvocation) async => Right(tEducation));
      when(mockLogbookDao.load())
          .thenAnswer((realInvocation) async => Right(tLogbook));
      when(mockPdfCreator.createPdf(any, any, any)).thenReturn(tPdf);

      when(mockPdfDao.save(any))
          .thenAnswer((realInvocation) async => Right(null));
      //act
      bloc.add(PrintEvent.createPdf());
      await untilCalled(mockPdfCreator.createPdf(any, any, any));
      //assert
      verify(mockPdfCreator.createPdf(tProfile, tEducation, tLogbook));
    });

    test('Calls pdfDao.save', () async {
      //arrange
      when(mockEducationDao.load())
          .thenAnswer((realInvocation) async => Right(tEducation));
      when(mockProfileDao.load())
          .thenAnswer((realInvocation) async => Right(tProfile));
      when(mockLogbookDao.load())
          .thenAnswer((realInvocation) async => Right(tLogbook));
      when(mockPdfCreator.createPdf(any, any, any)).thenReturn(tPdf);
      when(mockPdfDao.save(any))
          .thenAnswer((realInvocation) async => Right(null));
      //act
      bloc.add(PrintEvent.createPdf());
      await untilCalled(mockPdfDao.save(any));
      //assert
      verify(mockPdfDao.save(tPdf));
    });

    final tPath = 'test';
    final expectedStates = [
      PrintState.loadingData(),
      PrintState.creatingPdf(),
      PrintState.pdfCreated(path: tPath),
    ];
    test('Emits [LoadingData, CreatingPdf, PdfCreated] when no error happens.',
        () async {
      //arrange
      when(mockEducationDao.load())
          .thenAnswer((realInvocation) async => Right(tEducation));
      when(mockProfileDao.load())
          .thenAnswer((realInvocation) async => Right(tProfile));
      when(mockLogbookDao.load())
          .thenAnswer((realInvocation) async => Right(tLogbook));
      when(mockPdfCreator.createPdf(any, any, any)).thenReturn(tPdf);
      when(mockPdfDao.save(any)).thenAnswer((_) async => Right(tPath));
      //assert
      expectLater(bloc, emitsInAnyOrder(expectedStates));
      //act
      bloc.add(PrintEvent.createPdf());
    });

    RepoFailure tFailure = RepoFailure.unknown();
    final creationFailureStates = [
      PrintState.loadingData(),
      PrintState.creatingPdf(),
      PrintState.failed(tFailure),
    ];
    test(
        'Emits [LoadingData, CreatingPdf, Failed] when error happens during creation.',
        () async {
      //arrange
      when(mockEducationDao.load())
          .thenAnswer((realInvocation) async => Right(tEducation));
      when(mockProfileDao.load())
          .thenAnswer((realInvocation) async => Right(tProfile));
      when(mockPdfCreator.createPdf(any, any, any)).thenReturn(tPdf);
      when(mockPdfDao.save(any)).thenAnswer((_) async => Left(tFailure));
      //assert
      expectLater(bloc, emitsInAnyOrder(creationFailureStates));
      //act
      bloc.add(PrintEvent.createPdf());
    });

    final loadingFailureStates = [
      PrintState.loadingData(),
      PrintState.failed(tFailure),
    ];
    test('Emits [LoadingData, Failed] when error happens during loading.',
        () async {
      //arrange
      when(mockProfileDao.load())
          .thenAnswer((realInvocation) async => Left(tFailure));
      when(mockPdfCreator.createPdf(any, any, any)).thenReturn(tPdf);
      //assert
      expectLater(bloc, emitsInAnyOrder(loadingFailureStates));
      //act
      bloc.add(PrintEvent.createPdf());
    });
  });

  group('View Pdf', () {
    final tPath = 'testPath';
    test('Calls dao to get path.', () async {
      //arrange
      when(mockPdfDao.path).thenAnswer((realInvocation) async => tPath);
      when(mockPdfDao.exists(any)).thenAnswer((realInvocation) async => true);
      //act
      bloc.add(PrintEvent.viewPdf());
      await untilCalled(mockPdfDao.path);
      //assert
      verify(mockPdfDao.path);
    });

    test('Calls dao to check if file exists.', () async {
      //arrange
      when(mockPdfDao.path).thenAnswer((realInvocation) async => tPath);
      when(mockPdfDao.exists(any)).thenAnswer((realInvocation) async => true);
      //act
      bloc.add(PrintEvent.viewPdf());
      await untilCalled(mockPdfDao.exists(any));
      //assert
      verify(mockPdfDao.exists(tPath));
    });

    final expected = [PrintState.viewingPdf(path: tPath)];
    test('Returns [ViewingPdf] with path if file exists', () async {
      //arrange
      when(mockPdfDao.path).thenAnswer((realInvocation) async => tPath);
      when(mockPdfDao.exists(any)).thenAnswer((realInvocation) async => true);
      //act
      bloc.add(PrintEvent.viewPdf());
      await untilCalled(mockPdfDao.exists(any));
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });

    final RepoFailure failure = RepoFailure.notFound();
    final expectedFailure = [PrintState.failed(failure)];
    test('Returns [Failed] with FileNotFoundFailure if file does not exists.',
        () async {
      //arrange
      when(mockPdfDao.path).thenAnswer((realInvocation) async => tPath);
      when(mockPdfDao.exists(any)).thenAnswer((realInvocation) async => false);
      //act
      bloc.add(PrintEvent.viewPdf());
      await untilCalled(mockPdfDao.exists(any));
      //assert
      expectLater(bloc, emitsInOrder(expectedFailure));
    });
  });
}
