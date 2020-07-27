import 'package:ane_buddy/infrastructure/profile/hive_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/profile/entities/profile.dart';
import '../../domain/profile/repositories/profile_dao.dart';
import '../../domain/profile/repositories/repo_failure.dart';
import 'profile_repo.dart';
import 'dart:convert';

@LazySingleton(as: ProfileDao)
class ProfileDaoImpl implements ProfileDao {
  static const String defaultHiveBoxName = 'profile';
  static const String _profileKey = 'profile0';
  final ProfileRepo repo;

  ProfileDaoImpl() : repo = HiveRepo.name(defaultHiveBoxName);
  ProfileDaoImpl.customRepo(this.repo);

  @override
  Future<Either<RepoFailure, Profile>> load() async {
    try {
      Profile result = Profile.fromJson(json.decode(repo.load(_profileKey)));
      return Right(result);
    } catch (e) {
      return handleException(e);
    }
  }

  @override
  Future<Either<RepoFailure, void>> save(Profile profile) async {
    try {
      repo.save(_profileKey, json.encode(profile.toJson()));
      return Right(null);
    } catch (e) {
      return handleException(e);
    }
  }

  Left<RepoFailure, Profile> handleException(Exception e) {
    return Left(RepoFailure.unknown());
  }
}
