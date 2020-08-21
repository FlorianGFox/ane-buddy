import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/logbook/entities/logbook.dart';
import 'package:dartz/dartz.dart';

abstract class LogbookDao {
  Future<Either<RepoFailure, Logbook>> load();
  Future<Either<RepoFailure, void>> save(Logbook logbook);
  Future<void> dispose();
}
