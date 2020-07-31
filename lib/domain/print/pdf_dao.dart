import 'package:dartz/dartz.dart';
import 'package:pdf/widgets.dart';

import '../core/repositories/repo_failure.dart';

abstract class PdfDao {
  Future<Either<RepoFailure, void>> save(Document document);
}
