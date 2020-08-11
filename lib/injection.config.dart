// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/education/education_bloc.dart';
import 'domain/education/repositories/education_dao.dart';
import 'infrastructure/education/education_dao_impl.dart';
import 'infrastructure/core/hive_repo.dart';
import 'infrastructure/core/json_map_dao.dart';
import 'infrastructure/core/json_repo.dart';
import 'infrastructure/print/path_provider.dart';
import 'domain/print/pdf_creator.dart';
import 'domain/print/pdf_dao.dart';
import 'infrastructure/print/pdf_dao_impl.dart';
import 'application/print/print_bloc.dart';
import 'application/profile/profile_bloc.dart';
import 'domain/profile/repositories/profile_dao.dart';
import 'infrastructure/profile/profile_dao_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<JsonRepo>(() => HiveRepo());
  gh.lazySingleton<PathProvider>(() => PathProvider());
  gh.lazySingleton<PdfCreator>(() => PdfCreator());
  gh.lazySingleton<PdfDao>(() => PdfDaoImpl(pathProvider: get<PathProvider>()));
  gh.factory<JsonMapDao>(() => JsonMapDao(get<JsonRepo>()));
  gh.lazySingleton<ProfileDao>(() => ProfileDaoImpl(get<JsonMapDao>()));
  gh.lazySingleton<EducationDao>(() => EducationDaoImpl(get<JsonMapDao>()));
  gh.factory<PrintBloc>(() => PrintBloc(
        pdfDao: get<PdfDao>(),
        pdfCreator: get<PdfCreator>(),
        profileDao: get<ProfileDao>(),
      ));
  gh.factory<ProfileBloc>(() => ProfileBloc(profileDao: get<ProfileDao>()));
  gh.factory<EducationBloc>(() => EducationBloc(get<EducationDao>()));
  return get;
}
