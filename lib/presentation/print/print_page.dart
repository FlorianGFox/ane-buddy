import 'package:ane_buddy/application/print/print_bloc.dart';
import 'package:ane_buddy/presentation/print/pdf_viewer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class PrintPage extends StatelessWidget {
  const PrintPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Druck'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: BlocProvider(
          create: (context) {
            return getIt<PrintBloc>()..add(PrintEvent.createPdf());
          },
          child: _PrintPageBody(key: UniqueKey()),
        ),
      ),
    );
  }
}

class _PrintPageBody extends StatelessWidget {
  const _PrintPageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<PrintBloc, PrintState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loadingData: (_) {},
          creatingPdf: (_) {},
          pdfCreated: (state) {
            context.bloc<PrintBloc>().add(PrintEvent.viewPdf());
          },
          readingPdf: (_) {},
          viewingPdf: (state) {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PdfViewerPage(path: state.path),
              ),
            );
          },
          failed: (_) {},
        );
      },
      child: Container(),
    );
  }
}
