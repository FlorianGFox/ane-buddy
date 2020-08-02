import 'package:ane_buddy/application/print/print_bloc.dart';
import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/print/pdf_creator.dart';
import 'package:ane_buddy/domain/print/pdf_dao.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pdf/widgets.dart';

class MockPdfDao extends Mock implements PdfDao {}

class MockPdfCreator extends Mock implements PdfCreator {}

void main() {
  MockPdfDao mockDao;
  MockPdfCreator mockPdfCreator;
  // ignore: close_sinks
  PrintBloc bloc;

  setUp(() {
    mockDao = MockPdfDao();
    mockPdfCreator = MockPdfCreator();
    bloc = PrintBloc(mockDao, mockPdfCreator);
  });

  group('Creating Pdf', () {
    Document tPdf = Document();
    test('Calls pdfCreator.createPdf', () async {
      //arrange
      when(mockPdfCreator.createPdf()).thenReturn(tPdf);
      when(mockDao.save(any)).thenAnswer((realInvocation) async => Right(null));
      //act
      bloc.add(PrintEvent.createPdf());
      await untilCalled(mockPdfCreator.createPdf());
      //assert
      verify(mockPdfCreator.createPdf());
    });

    test('Calls dao.save', () async {
      //arrange
      when(mockPdfCreator.createPdf()).thenReturn(tPdf);
      when(mockDao.save(any)).thenAnswer((realInvocation) async => Right(null));
      //act
      bloc.add(PrintEvent.createPdf());
      await untilCalled(mockDao.save(any));
      //assert
      verify(mockDao.save(tPdf));
    });

    final tPath = 'test';
    final expectedStates = [
      PrintState.creatingPdf(),
      PrintState.pdfCreated(path: tPath),
    ];
    test('Emits [CreatingPdf, PdfCreated] when no error happens.', () async {
      //arrange
      when(mockPdfCreator.createPdf()).thenReturn(tPdf);
      when(mockDao.save(any)).thenAnswer((_) async => Right(tPath));
      //assert
      expectLater(bloc, emitsInAnyOrder(expectedStates));
      //act
      bloc.add(PrintEvent.createPdf());
    });

    RepoFailure tFailure = RepoFailure.unknown();
    final failureStates = [
      PrintState.creatingPdf(),
      PrintState.failed(tFailure),
    ];
    test('Emits [CreatingPdf, Failed] when error happens.', () async {
      //arrange
      when(mockPdfCreator.createPdf()).thenReturn(tPdf);
      when(mockDao.save(any)).thenAnswer((_) async => Left(tFailure));
      //assert
      expectLater(bloc, emitsInAnyOrder(failureStates));
      //act
      bloc.add(PrintEvent.createPdf());
    });
  });

  group('View Pdf', () {
    final tPath = 'testPath';
    test('Calls dao to get path.', () async {
      //arrange
      when(mockDao.path).thenAnswer((realInvocation) async => tPath);
      when(mockDao.exists(any)).thenAnswer((realInvocation) async => true);
      //act
      bloc.add(PrintEvent.viewPdf());
      await untilCalled(mockDao.path);
      //assert
      verify(mockDao.path);
    });

    test('Calls dao to check if file exists.', () async {
      //arrange
      when(mockDao.path).thenAnswer((realInvocation) async => tPath);
      when(mockDao.exists(any)).thenAnswer((realInvocation) async => true);
      //act
      bloc.add(PrintEvent.viewPdf());
      await untilCalled(mockDao.exists(any));
      //assert
      verify(mockDao.exists(tPath));
    });

    final expected = [PrintState.viewingPdf(path: tPath)];
    test('Returns [ViewingPdf] with path if file exists', () async {
      //arrange
      when(mockDao.path).thenAnswer((realInvocation) async => tPath);
      when(mockDao.exists(any)).thenAnswer((realInvocation) async => true);
      //act
      bloc.add(PrintEvent.viewPdf());
      await untilCalled(mockDao.exists(any));
      //assert
      expectLater(bloc, emitsInOrder(expected));
    });

    final RepoFailure failure = RepoFailure.notFound();
    final expectedFailure = [PrintState.failed(failure)];
    test('Returns [Failed] with FileNotFoundFailure if file does not exists.',
        () async {
      //arrange
      when(mockDao.path).thenAnswer((realInvocation) async => tPath);
      when(mockDao.exists(any)).thenAnswer((realInvocation) async => false);
      //act
      bloc.add(PrintEvent.viewPdf());
      await untilCalled(mockDao.exists(any));
      //assert
      expectLater(bloc, emitsInOrder(expectedFailure));
    });
  });
}
