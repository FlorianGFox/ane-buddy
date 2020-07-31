import 'dart:io';

import 'package:ane_buddy/infrastructure/print/local_pdf_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pdf/widgets.dart';

class MockFile extends Mock implements File {}

class MockDocument extends Mock implements Document {}

void main() {
  LocalPdfRepo repo;
  MockDocument mockDocument;
  MockFile mockFile;

  setUp(() {
    mockFile = MockFile();
    mockDocument = MockDocument();
    repo = LocalPdfRepo.file(mockFile);
  });

  group('Save', () {
    test('Calls document.save()', () async {
      //arrange
      //act
      repo.save(mockDocument);
      //assert
      verify(mockDocument.save());
    });

    test('Calls file.writeAsBytes()', () async {
      //arrange
      //act
      repo.save(mockDocument);
      //assert
      verify(mockFile.writeAsBytes(any));
    });
  });
}
