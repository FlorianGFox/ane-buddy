import 'dart:async';

import 'package:ane_buddy/domain/profile/repositories/profile_dao.dart';
import 'package:ane_buddy/domain/profile/repositories/repo_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/profile/entities/profile.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileDao profileDao;

  ProfileBloc({
    @required this.profileDao,
  }) : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      save: _mapSave,
    );
  }

  Stream<ProfileState> _mapSave(ProfileEvent event) async* {
    yield ProfileState.saving();
    var result = await profileDao.save(event.profile);
    var profile = await profileDao.load();
    profile.fold((l) => print(l), (r) => print(r));
    yield result.fold(
      (failure) => ProfileState.ready(
        profile: event.profile,
        failed: true,
        failure: failure,
      ),
      (_) => ProfileState.ready(profile: event.profile),
    );
  }
}
