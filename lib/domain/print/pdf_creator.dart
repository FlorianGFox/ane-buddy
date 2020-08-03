import 'package:injectable/injectable.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import '../profile/entities/profile.dart';

part 'widgets/pdf_title.dart';
part 'widgets/pdf_profile.dart';

@lazySingleton
class PdfCreator {
  PdfPageFormat pageFormat = PdfPageFormat.a4;

  Document createPdf(Profile profile) {
    final pdf = Document();
    _buildPdf(pdf, profile);
    return pdf;
  }

  void _buildPdf(Document pdf, Profile profile) {
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
