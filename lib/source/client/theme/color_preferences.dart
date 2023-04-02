import 'dart:ui';

class ColorPicker {
  static const _unknownElementBackground = Color.fromARGB(255, 120, 165, 187);
  static const _unknownElementForeground = Color.fromARGB(255, 6, 48, 82);

  static const _learnedElementBackground = Color.fromARGB(255, 120, 165, 187);
  static const _learnedElementForeground = Color.fromARGB(255, 6, 48, 82);

  static List<dynamic> getColor(bool hasLearned) {
    return hasLearned
        ? [_unknownElementBackground, _unknownElementForeground]
        : [_learnedElementBackground, _learnedElementForeground];
  }
}
