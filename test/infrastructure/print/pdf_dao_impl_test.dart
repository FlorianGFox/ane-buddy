import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/infrastructure/print/local_pdf_repo.dart';
import 'package:ane_buddy/infrastructure/print/pdf_dao_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pdf/widgets.dart';

class MockLocalPdfRepo extends Mock implements LocalPdfRepo {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  PdfDaoImpl dao;
  MockLocalPdfRepo mockRepo;

  setUp(() {
    mockRepo = MockLocalPdfRepo();
    dao = PdfDaoImpl.repo(mockRepo);
  });

  group('Save', () {
    final tDocument = Document();
    test('Calls localPdfRepo.save()', () async {
      //arrange
      //act
      dao.save(tDocument);
      //assert
      verify(mockRepo.save(tDocument));
    });

    test('Returns failure when exception happens.', () async {
      //arrange
      when(mockRepo.save(any)).thenThrow(Exception());
      //act
      final result = await dao.save(tDocument);
      //assert
      expect(result, Left(RepoFailure.unknown()));
    });

    test('Returns Right when no exception happens', () async {
      //arrange
      //act
      final result = await dao.save(tDocument);
      //assert
      expect(result, isA<Right>());
    });
  });
}
