import 'package:flutter/material.dart';

class KanjiListElement extends StatefulWidget {
  final String kanjiElement;
  final String kanjiGrade;
  final List<dynamic> kanjiOnyomi;
  final List<dynamic> kanjiKunyomi;
  final List<dynamic> kanjiMeaning;
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
    return Container(
      height: MediaQuery.of(context).size.height * 0.105,
      width: MediaQuery.of(context).size.width * 0.105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: const Color.fromARGB(255, 120, 165, 187).withAlpha(128)),
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
                      color:
                          const Color.fromARGB(255, 6, 48, 82).withAlpha(128)),
                  child: Center(
                    child: Text(
                      widget.kanjiElement,
                      style: TextStyle(fontSize: kanjiFontSize),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Container(
                  height: 22.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color:
                          const Color.fromARGB(255, 6, 48, 82).withAlpha(128)),
                  child: Center(
                    child: Text(
                      widget.kanjiGrade,
                      style: TextStyle(fontSize: gradeFontSize),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8.0, bottom: 8.0),
            child: Container(
              height: 90,
              width: 260,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: const Color.fromARGB(255, 6, 48, 82).withAlpha(128)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(widget.kanjiOnyomi.toString()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(widget.kanjiKunyomi.toString()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(widget.kanjiMeaning.toString()),
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
                        style: TextStyle(fontSize: classFontSize),
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
                        style: TextStyle(fontSize: tagFontSize),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
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
          kanjiClass: widget.kanjis[index]['class'],
          kanjiTag: widget.kanjis[index]['tag'],
          hasLearned: false,
        );
      },
    );
  }
}
