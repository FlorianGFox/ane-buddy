import 'package:injectable/injectable.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import '../profile/entities/profile.dart';

part 'widgets/pdf_title.dart';
part 'widgets/pdf_profile.dart';

@lazySingleton
class PdfCreator {
  PdfPageFormat pageFormat = PdfPageFormat.a4;

  Profile profile = Profile(
    firstName: 'Max',
    lastName: 'Mustermann',
    approvalDate: '01.01.2010',
    birthPlace: 'Musterstadt, Deutschland',
    birthday: '01.01.1990',
    dentalExamDate: '01.01.2010',
    foreignDegrees: 'Test Degree',
    hasDrMed: null,
    hasForeignDegree: true,
    medicalExamDate: '01.01.2010',
    otherDegrees: null,
  );

  Document createPdf() {
    final pdf = Document();
    _buildPdf(pdf);
    return pdf;
  }

  void _buildPdf(Document pdf) {
    pdf.addPage(
      Page(
        pageFormat: pageFormat,
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _PdfTitle(),
              SizedBox(height: 30.0),
              _PdfProfile(profile),
            ],
          );
        },
      ),
    );
  }
}
