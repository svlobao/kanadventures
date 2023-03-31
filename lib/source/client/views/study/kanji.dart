import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../server/scripts/read/read_json.dart';

class StudyKanji extends StatefulWidget {
  const StudyKanji({Key? key}) : super(key: key);

  @override
  State<StudyKanji> createState() => _StudyKanjiState();
}

class _StudyKanjiState extends State<StudyKanji> {
  final String jsonPath = 'assets/json/kanji.json';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KANJI')),
      body: FutureBuilder(
        future: fetchJson(path: jsonPath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Logger().d('5. Connected.\n');
            if (snapshot.hasData) {
              Logger().d('6. Snapshot has data: \n${snapshot.data}');
              final hiraganas = snapshot.data as List<Map<String, dynamic>>;
              return ListView.builder(
                itemCount: hiraganas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Text(hiraganas[index]['kanji'].toString()));
                },
              );
            } else {
              Logger().d('6. Snapshot is empty. Error: ${snapshot.error}\n');
              return const Center(child: Text('No data'));
            }
          } else {
            Logger().d('7. Attempting to connect.\n');
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
