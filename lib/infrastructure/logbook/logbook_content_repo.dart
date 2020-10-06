import 'package:ane_buddy/infrastructure/logbook/logbook_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/services.dart';

import '../../domain/logbook/entities/logbook.dart';

@lazySingleton
class LogbookContentRepo {
  AssetBundle _bundle = rootBundle;
  void set assetBundle(AssetBundle bundle) {
    _bundle = bundle;
  }

  final LogbookMapper logbookMapper;

  final String generalContentPath = 'assets/data/allgemeine_inhalte.txt';
  final String specificContentPath =
      'assets/data/spezifische_inhalte_anaesthesiologie.txt';

  LogbookContentRepo(this.logbookMapper);

  Future<Logbook> load() async {
    final generalContentString = await _bundle.loadString(generalContentPath);
    final specificContentString = await _bundle.loadString(specificContentPath);
    return logbookMapper
        .stringToLogbook(generalContentString + '\n' + specificContentString);
  }
}
