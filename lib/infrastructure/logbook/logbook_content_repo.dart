import 'package:injectable/injectable.dart';

import '../../domain/logbook/entities/logbook.dart';

@lazySingleton
class LogbookContentRepo {
  Future<Logbook> load() async {
    // TODO: implement loadFromText
    throw UnimplementedError();
  }
}
