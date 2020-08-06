import 'package:ane_buddy/infrastructure/core/json_map_dao.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/repositories/repo_failure.dart';
import '../../domain/profile/entities/profile.dart';
import '../../domain/profile/repositories/profile_dao.dart';

@LazySingleton(as: ProfileDao)
class ProfileDaoImpl implements ProfileDao {
  final String _tableName = 'profile';
  final String _profileKey = 'profile0';
  final JsonMapDao jsonMapDao;

  ProfileDaoImpl(this.jsonMapDao);

  @override
  Future<Either<RepoFailure, Profile>> load() async {
    try {
      var eitherFailureOrMap = await jsonMapDao.load(_tableName, _profileKey);
      return eitherFailureOrMap.fold(
        (failure) => Left(failure),
        (map) {
          Profile result = Profile.fromJson(map);
          return Right(result);
        },
      );
    } catch (e) {
      return _handleException(e);
    }
  }

  @override
  Future<Either<RepoFailure, void>> save(Profile profile) async {
    try {
      Either<RepoFailure, void> mayFailed = await jsonMapDao.save(
        profile.toJson(),
        _tableName,
        _profileKey,
      );
      return mayFailed.fold(
        (failure) => Left(failure),
        (r) => Right(null),
      );
    } catch (e) {
      return _handleException(e);
    }
  }

  Left<RepoFailure, Profile> _handleException(Exception e) {
    return Left(RepoFailure.unknown());
  }

  @override
  Future<void> dispose() {
    return jsonMapDao.dispose();
  }
}
