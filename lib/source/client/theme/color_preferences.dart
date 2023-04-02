import 'package:flutter/material.dart';

class ColorPicker {
  static const _unknownElementBackground = Color.fromARGB(255, 120, 165, 187);
  static const _unknownElementForeground = Color.fromARGB(255, 6, 48, 82);

  static const _learnedElementBackground = Color.fromARGB(255, 120, 165, 187);
  static const _learnedElementForeground = Color.fromARGB(255, 6, 48, 82);

  static const Map<String, Color> _gradeColor = {
    "N5": Colors.pink,
    "N4": Color.fromARGB(255, 9, 5, 133),
    "N3": Color.fromARGB(255, 15, 173, 21),
    "N2": Color.fromARGB(255, 181, 18, 6),
    "N1": Color.fromARGB(255, 12, 12, 12),
  };

  static List<dynamic> getContainerColor(bool hasLearned) {
    return hasLearned
        ? [_unknownElementBackground, _unknownElementForeground]
        : [_learnedElementBackground, _learnedElementForeground];
  }

  static Color getGradeColor(String grade) {
    return _gradeColor[grade]!;
  }
}
