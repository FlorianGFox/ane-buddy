import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/profile/entities/profile.dart';
import '../../domain/profile/repositories/profile_dao.dart';
import '../../domain/profile/repositories/repo_failure.dart';

@lazySingleton
class ProfileDaoImpl implements ProfileDao {
  @override
  Future<Either<RepoFailure, Profile>> load() {
    // TODO: implement load
  }

  @override
  Future<Either<RepoFailure, void>> save(Profile profile) {
    // TODO: implement save
  }

  @override
  Future<Either<RepoFailure, void>> update(Profile profile) {
    // TODO: implement update
  }
}
