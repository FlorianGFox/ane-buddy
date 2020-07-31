// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import 'application/profile/profile_bloc.dart';
import 'domain/print/pdf_dao.dart';
import 'domain/profile/repositories/profile_dao.dart';
import 'infrastructure/print/pdf_dao_impl.dart';
import 'infrastructure/profile/profile_dao_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  gh.lazySingleton<PdfDao>(() => PdfDaoImpl());
  gh.lazySingleton<ProfileDao>(() => ProfileDaoImpl());
  gh.lazySingleton<ProfileBloc>(() => ProfileBloc(profileDao: g<ProfileDao>()));
}
