import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/core/repositories/repo_failure.dart';
import '../../domain/profile/entities/profile.dart';
import '../../domain/profile/repositories/profile_dao.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileDao profileDao;

  Profile _currentProfile;

  ProfileBloc({
    @required this.profileDao,
  }) : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      saveCashedProfile: _mapSaveCashedProfile,
      load: _mapLoad,
      updateCachedProfile: _mapUpdateCachedProfile,
    );
  }

  Stream<ProfileState> _mapUpdateCachedProfile(
      _UpdateCachedProfile event) async* {
    _currentProfile = event.profile;
    yield ProfileState.ready(profile: _currentProfile);
  }

  Stream<ProfileState> _mapSaveCashedProfile(_SaveCashedProfile event) async* {
    yield ProfileState.saving();
    var result = await profileDao.save(_currentProfile);
    yield result.fold(
      (failure) => ProfileState.ready(
        profile: _currentProfile,
        failed: true,
        failure: failure,
      ),
      (_) => ProfileState.finishedSaving(),
    );
  }

  Stream<ProfileState> _mapLoad(_Load event) async* {
    yield ProfileState.loading();
    var failureOrProfile = await profileDao.load();
    yield* failureOrProfile.fold(
      (failure) async* {
        yield failure.map(
          unknown: (_) => ProfileState.ready(failed: true, failure: failure),
          notFound: (_) => _createReadyWithFailure(failure),
          conversion: (_) => _createReadyWithFailure(failure),
          invalidState: (_) => _createReadyWithFailure(failure),
        );
      },
      (profile) async* {
        _currentProfile = profile;
        yield ProfileState.finishedLoading(profile);
        yield ProfileState.ready(failed: false, profile: _currentProfile);
      },
    );
  }

  ProfileState _createReadyWithFailure(RepoFailure failure) {
    return ProfileState.ready(
      failed: true,
      failure: failure,
      profile: Profile(),
    );
  }
}
