import 'package:flutter/material.dart';

import '../../../server/scripts/read/read_json.dart';
import '../../components/bottom nav bar/study/kanji_elements.dart';

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
            if (snapshot.hasData) {
              final kanjis = snapshot.data as List<Map<String, dynamic>>;
              return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 18.0, horizontal: 12.0),
                child: KanjiList(
                  kanjiListLength: kanjis.length,
                  kanjis: kanjis,
                ),
              );
            } else {
              return const Center(child: Text('No data'));
            }
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
