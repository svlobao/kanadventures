import 'package:flutter/material.dart';

import '../../client/views/homepage.dart';
import '../views/study/hiragana.dart';
import '../views/study/kanji.dart';
import '../views/study/katakana.dart';
import '../views/study/vocabulary.dart';
import '../views/errors/page_not_found_404.dart';

class Routing {
  static Route<dynamic> pushRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/study_hiragana':
        return MaterialPageRoute(builder: (context) => const StudyHiragana());
      case '/study_katakana':
        return MaterialPageRoute(builder: (context) => const StudyKatakana());
      case '/study_kanji':
        return MaterialPageRoute(builder: (context) => const StudyKanji());
      case '/study_vocabulary':
        return MaterialPageRoute(builder: (context) => const StudyVocabulary());
      default:
        return Error404.routeNotFound();
    }
  }
}
