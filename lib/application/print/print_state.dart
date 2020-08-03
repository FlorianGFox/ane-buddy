part of 'print_bloc.dart';

@freezed
abstract class PrintState with _$PrintState {
  const factory PrintState.initial() = _Initial;
  const factory PrintState.loadingData() = _LoadingData;
  const factory PrintState.creatingPdf() = _CreatingPdf;
  const factory PrintState.pdfCreated({String path}) = _PdfCreated;
  const factory PrintState.readingPdf() = _ReadingPdf;
  const factory PrintState.viewingPdf({@required String path}) = _ViewingPdf;
  const factory PrintState.failed(RepoFailure failure) = _Failed;
}
