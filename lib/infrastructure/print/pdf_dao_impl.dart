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
  String _path;

  final String _fileName = 'anelog.pdf';

  PdfDaoImpl.repo(PdfRepo repo) : _repo = repo;
  PdfDaoImpl();

  @override
  Future<String> get path async {
    if (_path == null) {
      _path = await _createPath();
    }
    return _path;
  }

  @override
  Future<Either<RepoFailure, String>> save(Document pdf) async {
    try {
      if (_repo == null) {
        String _path = await _createPath();
        _repo = LocalPdfRepo(_path);
      }
      await _repo.save(pdf);
      return Right(_path);
    } catch (e) {
      return _handleExceptions(e);
    }
  }

  Left<RepoFailure, String> _handleExceptions(Exception e) {
    return Left(RepoFailure.unknown());
  }

  Future<String> _createPath() async {
    final String dir = (await getApplicationDocumentsDirectory()).path;
    return '$dir/$_fileName';
  }
}
