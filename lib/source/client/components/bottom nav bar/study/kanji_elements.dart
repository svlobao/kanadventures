import 'package:flutter/material.dart';
import 'package:kanadventures/source/client/theme/color_preferences.dart';

class KanjiListElement extends StatefulWidget {
  final String kanjiElement;
  final String kanjiGrade;
  final List<dynamic> kanjiOnyomi;
  final List<dynamic> kanjiKunyomi;
  final List<dynamic> kanjiMeaning;
  final List<dynamic> exampleWords;
  final List<dynamic> examplesKanas;
  final List<dynamic> examplesMeaning;
  final String kanjiClass;
  final String kanjiTag;
  final bool hasLearned;

  const KanjiListElement({
    Key? key,
    required this.kanjiElement,
    required this.kanjiGrade,
    required this.kanjiOnyomi,
    required this.kanjiKunyomi,
    required this.kanjiMeaning,
    required this.exampleWords,
    required this.examplesKanas,
    required this.examplesMeaning,
    required this.kanjiClass,
    required this.kanjiTag,
    required this.hasLearned,
  }) : super(key: key);

  @override
  State<KanjiListElement> createState() => _KanjiListElementState();
}

class _KanjiListElementState extends State<KanjiListElement> {
  final double kanjiFontSize = 32.0;
  final double gradeFontSize = 16.0;
  final double onyomiFontSize = 18.0;
  final double kunyomiFontSize = 18.0;
  final double classFontSize = 18.0;
  final double tagFontSize = 14.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 6.0,
      ),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Container(
                  constraints: const BoxConstraints(
                    maxHeight: 530,
                    maxWidth: 330,
                    minHeight: 270,
                    minWidth: 170,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text(
                          widget.kanjiElement,
                          style: TextStyle(fontSize: kanjiFontSize * 2),
                        ),
                      ),
                      const Divider(thickness: 4.0),
                      const SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Onyomi: ',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 155, 155, 155),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.kanjiOnyomi.toList().join(', '),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Kunyomi: ',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 155, 155, 155),
                              ),
                            ),
                            Container(
                              constraints:
                                  const BoxConstraints(maxWidth: 170.0),
                              child: Text(
                                widget.kanjiKunyomi.join(', '),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 30, 30, 30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Divider(thickness: 4.0),
                      const SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              constraints:
                                  const BoxConstraints(maxWidth: 300.0),
                              child: Text(
                                widget.kanjiMeaning.join(', '),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Color.fromARGB(255, 30, 30, 30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const Divider(thickness: 4.0),
                      const SizedBox(height: 15.0),
                      Column(
                        children: [
                          // ListView.builder(
                          //   itemCount: widget.exampleWords.length,
                          //   itemBuilder: (context, index) {
                          //     return Row(
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceEvenly,
                          //       children: [
                          //         widget.exampleWords[index],
                          //         widget.examplesKanas[index],
                          //         widget.examplesMeaning[index],
                          //       ],
                          //     );
                          //   },
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.105,
          width: MediaQuery.of(context).size.width * 0.105,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              color: ColorPicker.getContainerColor(widget.hasLearned)[0]
                  .withAlpha(255)),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: ColorPicker.getContainerColor(
                                  widget.hasLearned)[1]
                              .withAlpha(255)),
                      child: Center(
                        child: Text(
                          widget.kanjiElement,
                          style: TextStyle(
                            fontSize: kanjiFontSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 8.0),
                    child: Container(
                      height: 22.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          color: ColorPicker.getGradeColor(widget.kanjiGrade)
                              .withAlpha(255)),
                      child: Center(
                        child: Text(
                          widget.kanjiGrade,
                          style: TextStyle(
                            fontSize: gradeFontSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
                child: Container(
                  height: 90,
                  width: 260,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color:
                          const Color.fromARGB(255, 6, 48, 82).withAlpha(128)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(
                          widget.kanjiOnyomi.join(', '),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(widget.kanjiKunyomi.join(', '),
                            style: const TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Text(widget.kanjiMeaning.join(', '),
                            style: const TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        height: 35.0,
                        width: 63.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color.fromARGB(255, 6, 48, 82)
                                .withAlpha(128)),
                        child: Center(
                          child: Text(
                            widget.kanjiClass,
                            style: TextStyle(
                              fontSize: classFontSize,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        height: 35.0,
                        width: 63.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            color: const Color.fromARGB(255, 6, 48, 82)
                                .withAlpha(128)),
                        child: Center(
                          child: Text(
                            widget.kanjiTag,
                            style: TextStyle(
                              fontSize: tagFontSize,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class KanjiList extends StatefulWidget {
  final int kanjiListLength;
  final List<Map<String, dynamic>> kanjis;

  const KanjiList({
    Key? key,
    required this.kanjiListLength,
    required this.kanjis,
  }) : super(key: key);

  @override
  State<KanjiList> createState() => _KanjiListState();
}

class _KanjiListState extends State<KanjiList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.kanjiListLength,
      itemBuilder: (BuildContext context, index) {
        return KanjiListElement(
          kanjiElement: widget.kanjis[index]['kanji'],
          kanjiGrade: widget.kanjis[index]['grade'],
          kanjiOnyomi: widget.kanjis[index]['onyomi'],
          kanjiKunyomi: widget.kanjis[index]['kunyomi'],
          kanjiMeaning: widget.kanjis[index]['meaning'],
          exampleWords: widget.kanjis[index]['examples_words'],
          examplesKanas: widget.kanjis[index]['examples_kanas'],
          examplesMeaning: widget.kanjis[index]['examples_meaning'],
          kanjiClass: widget.kanjis[index]['class'],
          kanjiTag: widget.kanjis[index]['tag'],
          hasLearned: false,
        );
      },
    );
  }
}
