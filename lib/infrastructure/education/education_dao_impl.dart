import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/repositories/repo_failure.dart';
import '../../domain/education/entities/further_education.dart';
import '../../domain/education/repositories/education_dao.dart';
import '../core/json_map_dao.dart';

@LazySingleton(as: EducationDao)
class EducationDaoImpl implements EducationDao {
  final JsonMapDao jsonMapDao;
  static const String table = 'further_education';
  static const String key = 'education0';

  EducationDaoImpl(this.jsonMapDao);

  @override
  Future<Either<RepoFailure, FurtherEducation>> load() async {
    Either<RepoFailure, Map<String, dynamic>> failureOrMap =
        await jsonMapDao.load(table, key);
    return failureOrMap.fold(
      (failure) async => Left(failure),
      (map) {
        try {
          final result = FurtherEducation.fromJson(map);
          return Right(result);
        } catch (e) {
          return Left(RepoFailure.conversion());
        }
      },
    );
  }

  @override
  Future<Either<RepoFailure, void>> save(FurtherEducation education) async {
    return jsonMapDao.save(education.toJson(), table, key);
  }

  @override
  Future<void> dispose() async {
    return jsonMapDao.dispose();
  }
}
