// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import 'application/education/education_bloc.dart';
import 'application/print/print_bloc.dart';
import 'application/profile/profile_bloc.dart';
import 'domain/education/repositories/education_dao.dart';
import 'domain/print/pdf_creator.dart';
import 'domain/print/pdf_dao.dart';
import 'domain/profile/repositories/profile_dao.dart';
import 'infrastructure/core/hive_repo.dart';
import 'infrastructure/core/json_map_dao.dart';
import 'infrastructure/core/json_repo.dart';
import 'infrastructure/print/path_provider.dart';
import 'infrastructure/print/pdf_dao_impl.dart';
import 'infrastructure/profile/profile_dao_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  gh.factory<EducationBloc>(() => EducationBloc(g<EducationDao>()));
  gh.factory<JsonRepo>(() => HiveRepo());
  gh.lazySingleton<PathProvider>(() => PathProvider());
  gh.lazySingleton<PdfCreator>(() => PdfCreator());
  gh.lazySingleton<PdfDao>(() => PdfDaoImpl(pathProvider: g<PathProvider>()));
  gh.factory<JsonMapDao>(() => JsonMapDao(g<JsonRepo>()));
  gh.lazySingleton<ProfileDao>(() => ProfileDaoImpl(g<JsonMapDao>()));
  gh.factory<PrintBloc>(() => PrintBloc(
        pdfDao: g<PdfDao>(),
        pdfCreator: g<PdfCreator>(),
        profileDao: g<ProfileDao>(),
      ));
  gh.factory<ProfileBloc>(() => ProfileBloc(profileDao: g<ProfileDao>()));
}
