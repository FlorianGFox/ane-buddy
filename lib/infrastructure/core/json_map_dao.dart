import 'dart:convert';

import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/infrastructure/core/json_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class JsonMapDao {
  final JsonRepo repo;

  JsonMapDao(this.repo);

  Future<Either<RepoFailure, Map<String, dynamic>>> load(
      String table, String key) async {
    try {
      String jsonString = await repo.load(table: table, key: key);
      if (jsonString == null) {
        return Left(RepoFailure.notFound());
      }
      Map<String, dynamic> decodedJson = json.decode(jsonString);
      return Right(decodedJson);
    } catch (e) {
      return _handleException(e);
    }
  }

  Future<Either<RepoFailure, void>> save(
    Map<String, dynamic> map,
    String table,
    String key,
  ) async {
    try {
      await repo.save(
        table: table,
        key: key,
        value: json.encode(map),
      );
      return Right(null);
    } catch (e) {
      return _handleException(e);
    }
  }

  Future<void> dispose() {
    return repo.dispose();
  }

  Left<RepoFailure, Map<String, dynamic>> _handleException(Exception e) {
    return Left(RepoFailure.unknown());
  }
}
