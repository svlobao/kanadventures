import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../server/scripts/read/read_json.dart';

class StudyVocabulary extends StatefulWidget {
  const StudyVocabulary({Key? key}) : super(key: key);

  @override
  State<StudyVocabulary> createState() => _StudyVocabularyState();
}

class _StudyVocabularyState extends State<StudyVocabulary> {
  final String jsonPath = 'assets/json/words.json';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VOCABULARY')),
      body: FutureBuilder(
        future: fetchJson(path: jsonPath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Logger().d('5. Connected.\n');
            if (snapshot.hasData) {
              Logger().d('6. Snapshot has data: \n${snapshot.data}');
              final words = snapshot.data as List<Map<String, dynamic>>;
              return ListView.builder(
                itemCount: words.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text(
                      words[index]['jp'].toString(),
                      style: const TextStyle(fontSize: 22.0),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(words[index]['kana'].toString()),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(words[index]['eng'].toString()),
                      ],
                    ),
                    trailing: const Icon(Icons.abc),
                  );
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
