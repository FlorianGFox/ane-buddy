// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import 'application/profile/profile_bloc.dart';
import 'infrastructure/profile/profile_dao_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  gh.factory<ProfileBloc>(() => ProfileBloc());
  gh.lazySingleton<ProfileDaoImpl>(() => ProfileDaoImpl());
}
