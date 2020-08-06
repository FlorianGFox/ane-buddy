import 'package:ane_buddy/domain/education/entities/further_education.dart';
import 'package:ane_buddy/domain/core/repositories/repo_failure.dart';
import 'package:ane_buddy/domain/education/repositories/education_dao.dart';
import 'package:dartz/dartz.dart';

class EducationDaoImpl implements EducationDao {
  @override
  Future<Either<RepoFailure, FurtherEducation>> load() {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<Either<RepoFailure, void>> save(FurtherEducation education) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> dispose() {
    // TODO: implement dispose
    throw UnimplementedError();
  }
}
