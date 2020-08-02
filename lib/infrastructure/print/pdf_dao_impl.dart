import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pdf/widgets.dart';

import '../../domain/core/repositories/repo_failure.dart';
import '../../domain/print/pdf_dao.dart';
import 'local_pdf_repo.dart';
import 'path_provider.dart';
import 'pdf_repo.dart';

@LazySingleton(as: PdfDao)
class PdfDaoImpl implements PdfDao {
  PdfRepo _repo;
  PathProvider _pathProvider;
  String _path;

  final String _fileName = 'anelog.pdf';

  PdfDaoImpl.repo({
    @required PdfRepo repo,
    @required PathProvider pathProvider,
  })  : _repo = repo,
        _pathProvider = pathProvider;
  PdfDaoImpl({@required PathProvider pathProvider})
      : _pathProvider = pathProvider;

  @override
  Future<String> get path async {
    _path ??= await _pathProvider.createPathToFile(_fileName);
    return _path;
  }

  @override
  Future<Either<RepoFailure, String>> save(Document pdf) async {
    try {
      if (_repo == null) {
        _repo = LocalPdfRepo(await path);
      }
      await _repo.save(pdf);
      return Right(await path);
    } catch (e) {
      return _handleExceptions(e);
    }
  }

  Left<RepoFailure, String> _handleExceptions(Exception e) {
    return Left(RepoFailure.unknown());
  }

  @override
  Future<bool> exists(String path) {
    return _pathProvider.fileExists(path);
  }
}
