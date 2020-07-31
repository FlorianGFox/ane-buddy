import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pdf/widgets.dart';

import '../../domain/core/repositories/repo_failure.dart';
import '../../domain/print/pdf_creator.dart';
import '../../domain/print/pdf_dao.dart';

part 'print_bloc.freezed.dart';
part 'print_event.dart';
part 'print_state.dart';

@lazySingleton
class PrintBloc extends Bloc<PrintEvent, PrintState> {
  final PdfDao pdfDao;
  final PdfCreator pdfCreator;

  PrintBloc(this.pdfDao, this.pdfCreator) : super(PrintState.initial());

  @override
  Stream<PrintState> mapEventToState(
    PrintEvent event,
  ) async* {
    yield* event.map(
      createPdf: _mapCreatePdf,
      viewPdf: _mapViewPdf,
    );
  }

  Stream<PrintState> _mapCreatePdf(_CreatePdf state) async* {
    yield PrintState.creatingPdf();
    Document pdf = pdfCreator.createPdf();
    Either<RepoFailure, String> result = await pdfDao.save(pdf);
    yield result.fold(
      (failure) => PrintState.failed(failure),
      (path) => PrintState.pdfCreated(path: path),
    );

    yield PrintState.pdfCreated();
  }

  Stream<PrintState> _mapViewPdf(_ViewPdf state) {
    //TODO implement
  }
}
