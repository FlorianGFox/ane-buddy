part of 'print_bloc.dart';

@freezed
abstract class PrintEvent with _$PrintEvent {
  const factory PrintEvent.createPdf() = _CreatePdf;
  const factory PrintEvent.viewPdf() = _ViewPdf;
}
