import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/profile.dart';

abstract class ProfileDao {
  Future<Either<RepoFailure, Profile>> load();
  Future<Either<RepoFailure, void>> save(Profile profile);
  Future<void> dispose();
}
