import 'package:ane_buddy/infrastructure/print/local_pdf_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';

import '../../domain/core/repositories/repo_failure.dart';
import '../../domain/print/pdf_dao.dart';
import 'pdf_repo.dart';

@LazySingleton(as: PdfDao)
class PdfDaoImpl implements PdfDao {
  PdfRepo _repo;
  final String fileName = 'anelog.pdf';

  PdfDaoImpl.repo(PdfRepo repo) : _repo = repo;
  PdfDaoImpl();

  @override
  Future<Either<RepoFailure, void>> save(Document pdf) async {
    try {
      if (_repo == null) {
        final String dir = (await getApplicationDocumentsDirectory()).path;
        final String path = '$dir/$fileName';
        _repo = LocalPdfRepo(path);
      }
      await _repo.save(pdf);
      return Right(null);
    } catch (e) {
      return _handleExceptions(e);
    }
  }

  Left<RepoFailure, dynamic> _handleExceptions(Exception e) {
    return Left(RepoFailure.unknown());
  }
}
