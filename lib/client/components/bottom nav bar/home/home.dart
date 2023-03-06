import 'package:flutter/material.dart';
import 'package:kanadventures/client/components/bottom%20nav%20bar/home/progress_bar.dart';

class BottomHome extends StatefulWidget {
  const BottomHome({Key? key}) : super(key: key);

  @override
  State<BottomHome> createState() => _BottomHomeState();
}

class _BottomHomeState extends State<BottomHome> {
  int wordsLearned = 450;
  int totalWords = 3000;

  int hiraganasLearned = 60;
  int totalHiraganas = 100;

  int katakanasLearned = 40;
  int totalKatakanas = 100;

  int kanjisLearned = 120;
  int totalKanjis = 2200;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.redAccent,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$hiraganasLearned/$totalHiraganas'),
                        const Text('hiraganas'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProgressBar(
                            tasksCompleted: hiraganasLearned,
                            maxTasks: totalHiraganas,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$katakanasLearned/$totalKatakanas'),
                        const Text('katakanas'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProgressBar(
                            tasksCompleted: katakanasLearned,
                            maxTasks: totalKatakanas,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$kanjisLearned/$totalKanjis'),
                        const Text('kanjis'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProgressBar(
                            tasksCompleted: kanjisLearned,
                            maxTasks: totalKanjis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.redAccent,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$wordsLearned/$totalWords'),
                        const Text('words'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProgressBar(
                            tasksCompleted: wordsLearned,
                            maxTasks: totalWords,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Row(
                children: [
                  Container(
                    color: Colors.greenAccent,
                    height: MediaQuery.of(context).size.height * 0.125,
                    width: MediaQuery.of(context).size.width * 0.925,
                    child: const Center(
                      child: Text('Time Series'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Row(
                children: [
                  Container(
                    color: Colors.blueAccent,
                    height: MediaQuery.of(context).size.height * 0.475,
                    width: MediaQuery.of(context).size.width * 0.925,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 10.0),
                              const SizedBox(
                                height: 40.0,
                                child: Center(
                                    child: Text(
                                  'Missions',
                                  style: TextStyle(fontSize: 20.0),
                                )),
                              ),
                              const Divider(color: Colors.black87),
                              const SizedBox(height: 10.0),
                              Expanded(
                                child: ListView(
                                  children: const [
                                    Card(
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.camera,
                                          size: 40.0,
                                        ),
                                        title: Text('Mission #1'),
                                        subtitle: Text('100 pts'),
                                        trailing: Text(
                                          '31/12/2023',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.camera,
                                          size: 40.0,
                                        ),
                                        title: Text('Mission #2'),
                                        subtitle: Text('100 pts'),
                                        trailing: Text(
                                          '31/12/2023',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.camera,
                                          size: 40.0,
                                        ),
                                        title: Text('Mission #3'),
                                        subtitle: Text('100 pts'),
                                        trailing: Text(
                                          '31/12/2023',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.camera,
                                          size: 40.0,
                                        ),
                                        title: Text('Mission #4'),
                                        subtitle: Text('100 pts'),
                                        trailing: Text(
                                          '31/12/2023',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.camera,
                                          size: 40.0,
                                        ),
                                        title: Text('Mission #5'),
                                        subtitle: Text('100 pts'),
                                        trailing: Text(
                                          '31/12/2023',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.camera,
                                          size: 40.0,
                                        ),
                                        title: Text('Mission #6'),
                                        subtitle: Text('100 pts'),
                                        trailing: Text(
                                          '31/12/2023',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.camera,
                                          size: 40.0,
                                        ),
                                        title: Text('Mission #7'),
                                        subtitle: Text('100 pts'),
                                        trailing: Text(
                                          '31/12/2023',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.camera,
                                          size: 40.0,
                                        ),
                                        title: Text('Mission #8'),
                                        subtitle: Text('100 pts'),
                                        trailing: Text(
                                          '31/12/2023',
                                          style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20.0),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
