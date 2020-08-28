part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.saveCashedProfile() = _SaveCashedProfile;
  const factory ProfileEvent.load() = _Load;
  const factory ProfileEvent.updateCachedProfile(Profile profile) =
      _UpdateCachedProfile;
}
