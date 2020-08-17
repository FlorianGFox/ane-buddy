part of 'logbook_bloc.dart';

@freezed
abstract class LogbookState with _$LogbookState {
  const factory LogbookState.initial() = _Initial;
  const factory LogbookState.viewing({
    Logbook logbook,
    bool failed,
    RepoFailure failure,
  }) = _Viewing;
  const factory LogbookState.loading() = _Loading;
  const factory LogbookState.saving() = _Saving;
  const factory LogbookState.editing({
    Logbook logbook,
    LogbookEntry entry,
    bool failed,
    RepoFailure failure,
  }) = _Editing;
}
