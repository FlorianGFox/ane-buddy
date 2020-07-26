import 'package:dartz/dartz.dart';

import '../entities/profile.dart';
import 'repo_failure.dart';

abstract class ProfileDao {
  Future<Either<RepoFailure, Profile>> load();
  Future<Either<RepoFailure, void>> save(Profile profile);
  Future<Either<RepoFailure, void>> update(Profile profile);
}
