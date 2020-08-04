import 'dart:io';

import 'package:pdf/widgets.dart';

import 'pdf_repo.dart';

class LocalPdfRepo implements PdfRepo {
  final File file;

  LocalPdfRepo.file(this.file);
  LocalPdfRepo(String path) : file = File(path);

  @override
  Future<void> save(Document pdf) async {
    await file.writeAsBytes(pdf.save());
  }
}
