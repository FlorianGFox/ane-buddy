import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class PathProvider {
  Future<String> createPathToFile(String fileName) async {
    final String dir = (await getApplicationDocumentsDirectory()).path;
    return '$dir/$fileName';
  }

  Future<bool> fileExists(String pathToFile) {
    return File(pathToFile).exists();
  }
}
