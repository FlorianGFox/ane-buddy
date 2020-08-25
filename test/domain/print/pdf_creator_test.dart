import 'package:ane_buddy/domain/education/entities/further_education.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:ane_buddy/domain/print/pdf_creator.dart';
import 'package:ane_buddy/domain/profile/entities/profile.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  PdfCreator pdfCreator;

  setUp(() {
    pdfCreator = PdfCreator();
  });

  group('CreatePdf', () {
    test('Returns not null', () async {
      //arrange
      //act
      final result =
          pdfCreator.createPdf(Profile(), FurtherEducation([]), Logbook([]));
      //assert
      expect(result, isNotNull);
    });
  });
}
