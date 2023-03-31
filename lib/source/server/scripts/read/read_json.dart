import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert' show json;
import 'package:logger/logger.dart';

final logger = Logger();

Future<List<Map<String, dynamic>>> fetchJson({required String path}) async {
  try {
    logger.d('1. Entered the try syntax');

    final String jsonString = await rootBundle.loadString(path);
    logger.d('2. Finished loading json string: \n$jsonString');

    final jsonMapList = json.decode(jsonString);
    logger.d(
        '3. Finished decoding json string into list of maps: \n$jsonMapList');

    final data = jsonMapList.cast<Map<String, dynamic>>().toList();
    logger.d('4. finished casting the json map list: \n$data');

    return data;
  } on FileSystemException catch (err) {
    logger.e('Entered FileSystemException. Error: $err');
    rethrow;
  } catch (err) {
    logger.e('Unknown exception. Error: $err');
    rethrow;
  }
}
