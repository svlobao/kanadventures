import 'package:flutter/material.dart';

class BottomStudy extends StatefulWidget {
  const BottomStudy({Key? key}) : super(key: key);

  @override
  State<BottomStudy> createState() => _BottomStudyState();
}

class _BottomStudyState extends State<BottomStudy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            const Text(
              'MISSION TRACKS',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('/');
                  // ignore: avoid_print
                  print('updating kanas...');
                });
              },
              child: const Card(
                child: SizedBox(
                  height: 100,
                  child: ListTile(
                    leading: Text('あ', style: TextStyle(fontSize: 28)),
                    title: Text('HIRAGANA'),
                    subtitle:
                        Text('Learn the fundamentals of Japanese writing'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('/');
                });
              },
              child: const Card(
                child: SizedBox(
                  height: 100,
                  child: ListTile(
                    leading: Text('サ', style: TextStyle(fontSize: 28)),
                    title: Text('KATAKANA'),
                    subtitle:
                        Text('Learn the fundamentals of Japanese writing'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('/');
                });
              },
              child: const Card(
                child: SizedBox(
                  height: 100,
                  child: ListTile(
                    leading: Text('漢', style: TextStyle(fontSize: 28)),
                    title: Text('KANJI'),
                    subtitle: Text('Chinese ideograms to enrich communication'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed('/');
                });
              },
              child: const Card(
                child: SizedBox(
                  height: 100,
                  child: ListTile(
                    leading: Icon(Icons.abc, size: 36),
                    title: Text('VOCABULARY'),
                    subtitle: Text('Useful words in different contexts'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
