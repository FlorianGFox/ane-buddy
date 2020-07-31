import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/repositories/repo_failure.dart';
import '../../domain/profile/entities/profile.dart';
import '../../domain/profile/repositories/profile_dao.dart';
import 'hive_repo.dart';
import 'profile_repo.dart';

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
      String jsonString = await repo.load(_profileKey);
      if (jsonString == null) {
        return Left(RepoFailure.notFound());
      }
      var decodedJson = json.decode(jsonString);
      Profile result = Profile.fromJson(decodedJson);
      return Right(result);
    } catch (e) {
      return handleException(e);
    }
  }

  @override
  Future<Either<RepoFailure, void>> save(Profile profile) async {
    try {
      await repo.save(_profileKey, json.encode(profile.toJson()));
      return Right(null);
    } catch (e) {
      return handleException(e);
    }
  }

  Left<RepoFailure, Profile> handleException(Exception e) {
    return Left(RepoFailure.unknown());
  }
}
