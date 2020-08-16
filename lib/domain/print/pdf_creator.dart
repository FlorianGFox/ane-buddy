import 'package:ane_buddy/domain/education/entities/further_education.dart';
import 'package:ane_buddy/domain/education/entities/further_education_entry.dart';
import 'package:injectable/injectable.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import '../profile/entities/profile.dart';

part 'widgets/pdf_title.dart';
part 'widgets/pdf_profile.dart';
part 'widgets/pdf_education.dart';

@lazySingleton
class PdfCreator {
  PdfPageFormat pageFormat = PdfPageFormat.a4;

  Document createPdf(Profile profile, FurtherEducation education) {
    final pdf = Document();
    _buildPdf(pdf, profile, education);
    return pdf;
  }

  void _buildPdf(Document pdf, Profile profile, FurtherEducation education) {
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
              SizedBox(height: 30.0),
              _PdfEducation(education),
            ],
          );
        },
      ),
    );
  }
}
