import 'package:flutter/material.dart';

import '../components/bottom nav bar/home/home.dart';
import '../components/bottom nav bar/settings/settings.dart';
import '../components/bottom nav bar/study/study.dart';
import '../components/homepage/appbar_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<Widget> screenList = <Widget>[
    const BottomHome(),
    const BottomStudy(),
    const BottomSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppbarTitle(),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screenList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.now_widgets_sharp),
            label: 'Study',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
