import 'package:pdf/widgets.dart';

abstract class PdfRepo {
  Future<void> save(Document pdf);
}
