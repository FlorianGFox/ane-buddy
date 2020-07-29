part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.ready({
    Profile profile,
    @Default(false) bool failed,
    RepoFailure failure,
  }) = _Ready;
  const factory ProfileState.saving() = _Saving;
}
