import 'package:ane_buddy/infrastructure/logbook/logbook_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/services.dart';

import '../../domain/logbook/entities/logbook.dart';

@lazySingleton
class LogbookContentRepo {
  final AssetBundle bundle;
  final LogbookMapper logbookMapper;

  final String generalContentPath = 'assets/data/allgemeine_inhalte.txt';
  final String specificContentPath =
      'assets/data/spezifische_inhalte_anaesthesiologie.txt';

  LogbookContentRepo(this.logbookMapper, [AssetBundle assetBundle])
      : this.bundle = assetBundle ?? rootBundle;

  Future<Logbook> load() async {
    final generalContentString = await bundle.loadString(generalContentPath);
    final specificContentString = await bundle.loadString(specificContentPath);
    return logbookMapper
        .stringToLogbook(generalContentString + '\n' + specificContentString);
  }
}
