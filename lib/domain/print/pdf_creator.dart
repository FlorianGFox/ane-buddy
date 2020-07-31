import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class PdfCreator {
  PdfPageFormat pageFormat = PdfPageFormat.a4;
  Document createPdf() {
    final pdf = Document();

    _addTitle(pdf);

    return pdf;
  }

  void _addTitle(Document pdf) {
    pdf.addPage(
      Page(
        pageFormat: pageFormat,
        build: (Context context) {
          return Center(
            child: Text("Hello World"),
          ); // Center
        },
      ),
    );
  }
}
