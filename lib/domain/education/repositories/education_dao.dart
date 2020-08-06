import 'package:dartz/dartz.dart';

import '../../core/repositories/repo_failure.dart';
import '../entities/further_education.dart';

abstract class EducationDao {
  Future<Either<RepoFailure, FurtherEducation>> load();
  Future<Either<RepoFailure, void>> save(FurtherEducation education);
  Future<void> dispose();
}
