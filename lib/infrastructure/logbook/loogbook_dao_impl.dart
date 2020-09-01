import 'dart:io';

import 'package:ane_buddy/infrastructure/logbook/logbook_content_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/repositories/repo_failure.dart';
import '../../domain/logbook/entities/logbook.dart';
import '../../domain/logbook/repositories/logbook_dao.dart';
import '../core/json_map_dao.dart';

@LazySingleton(as: LogbookDao)
class LogbookDaoImpl implements LogbookDao {
  static const String table = 'logbook';
  static const String key = 'logbook0';

  final JsonMapDao jsonMapDao;
  final LogbookContentRepo textLogbookRepo;

  LogbookDaoImpl(this.jsonMapDao, this.textLogbookRepo);

  @override
  Future<void> dispose() {
    return jsonMapDao.dispose();
  }

  @override
  Future<Either<RepoFailure, Logbook>> load() async {
    Either<RepoFailure, Map<String, dynamic>> failureOrMap =
        await jsonMapDao.load(table, key);
    return failureOrMap.fold(
      (failure) async => Left(failure),
      (map) {
        try {
          final result = Logbook.fromJson(map);
          return Right(result);
        } catch (e) {
          return Left(RepoFailure.conversion());
        }
      },
    );
  }

  @override
  Future<Either<RepoFailure, void>> save(Logbook logbook) {
    Map<String, dynamic> jsonMap = logbook.toJson();
    return jsonMapDao.save(jsonMap, table, key);
  }

  @override
  Future<Either<RepoFailure, Logbook>> loadInitial() async {
    try {
      final result = await textLogbookRepo.load();
      return Right(result);
    } on FileSystemException {
      return Left(RepoFailure.notFound());
    }
  }
}
