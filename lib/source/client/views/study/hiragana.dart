import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../server/scripts/read/listen_audio.dart';
import '../../../server/scripts/read/read_json.dart';

class StudyHiragana extends StatefulWidget {
  const StudyHiragana({Key? key}) : super(key: key);

  @override
  State<StudyHiragana> createState() => _StudyHiraganaState();
}

class _StudyHiraganaState extends State<StudyHiragana> {
  final String jsonPath = 'assets/json/kanas.json';
  final double popupFontSize = 68.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HIRAGANA')),
      body: FutureBuilder(
        future: fetchJson(path: jsonPath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Logger().d('5. Connected.\n');
            if (snapshot.hasData) {
              Logger().d('6. Snapshot has data: \n${snapshot.data}');
              final hiraganas = snapshot.data as List<Map<String, dynamic>>;
              return GridView.count(
                crossAxisCount: 5,
                children: List.generate(
                  hiraganas.length,
                  (index) => TextButton(
                    child: Center(
                      key: Key(hiraganas[index]['id'].toString()),
                      child: Text(
                        hiraganas[index]['hiragana'],
                        style: const TextStyle(fontSize: 22.0),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Container(
                              constraints: BoxConstraints(
                                maxHeight:
                                    MediaQuery.of(context).size.height * 0.45,
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.7,
                                minHeight:
                                    MediaQuery.of(context).size.height * 0.3,
                                minWidth:
                                    MediaQuery.of(context).size.width * 0.3,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 8.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          hiraganas[index]['hiragana'],
                                          style: TextStyle(
                                              fontSize: popupFontSize),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Color.fromARGB(255, 69, 106, 255),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 18.0,
                                      horizontal: 8.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          ' \"${hiraganas[index]["romaji"]}\" ',
                                          style: TextStyle(
                                              fontSize: popupFontSize * 0.5),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Color.fromARGB(255, 69, 106, 255),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 18.0,
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                        'Kana of number #${hiraganas[index]['id']}'),
                                  ),
                                  const Divider(
                                    color: Color.fromARGB(255, 69, 106, 255),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 22.0,
                                      horizontal: 8.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            playKanaAudio();
                                          },
                                          child: const Icon(
                                            Icons.volume_up_rounded,
                                            size: 36.0,
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            //addProgressElement();
                                            //learnKana();
                                            Navigator.of(context).pop();
                                          },
                                          style: ButtonStyle(
                                            animationDuration:
                                                const Duration(milliseconds: 5),
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .resolveWith<Color?>(
                                              (Set<MaterialState> states) {
                                                if (states.contains(
                                                    MaterialState.pressed)) {
                                                  return const Color.fromARGB(
                                                      255, 6, 68, 9);
                                                }
                                                return Colors.greenAccent;
                                              },
                                            ),
                                            foregroundColor:
                                                MaterialStateProperty
                                                    .resolveWith<Color?>(
                                              (Set<MaterialState> states) {
                                                if (states.contains(
                                                    MaterialState.pressed)) {
                                                  return Colors.greenAccent;
                                                }
                                                return const Color.fromARGB(
                                                    255, 6, 68, 9);
                                              },
                                            ),
                                          ),
                                          child: const Text('Got it!'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
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
