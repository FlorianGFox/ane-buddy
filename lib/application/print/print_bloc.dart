import 'dart:async';

import 'package:ane_buddy/domain/profile/entities/profile.dart';
import 'package:ane_buddy/domain/profile/repositories/profile_dao.dart';
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

@injectable
class PrintBloc extends Bloc<PrintEvent, PrintState> {
  final PdfDao pdfDao;
  final PdfCreator pdfCreator;
  final ProfileDao profileDao;

  PrintBloc({
    @required this.pdfDao,
    @required this.pdfCreator,
    @required this.profileDao,
  }) : super(PrintState.initial());

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
    yield PrintState.loadingData();
    final profile = await profileDao.load();
    yield* profile.fold(
      (failure) async* {
        yield PrintState.failed(failure);
      },
      _createPdf,
    );
  }

  Stream<PrintState> _createPdf(Profile profile) async* {
    yield PrintState.creatingPdf();
    Document pdf = pdfCreator.createPdf(profile);
    Either<RepoFailure, String> result = await pdfDao.save(pdf);
    yield result.fold(
      (failure) => PrintState.failed(failure),
      (path) => PrintState.pdfCreated(path: path),
    );
  }

  Stream<PrintState> _mapViewPdf(_ViewPdf state) async* {
    final path = await pdfDao.path;
    bool exists = await pdfDao.exists(path);
    yield exists
        ? PrintState.viewingPdf(path: path)
        : PrintState.failed(RepoFailure.notFound());
  }
}
