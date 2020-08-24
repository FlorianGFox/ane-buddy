part of 'logbook_bloc.dart';

@freezed
abstract class LogbookEvent with _$LogbookEvent {
  const factory LogbookEvent.load() = _Load;
  const factory LogbookEvent.edit(Logbook logbook, LogbookEntry entry) = _Edit;
  const factory LogbookEvent.save(Logbook logbook, LogbookEntry entry) = _Save;
  const factory LogbookEvent.view(Logbook logbook) = _View;
}
