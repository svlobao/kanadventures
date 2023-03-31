class KanaModel {
  int? id;
  String? hiragana;
  String? katakana;
  String? romaji;
  String? family;
  String? classification;

  KanaModel({
    this.id,
    this.hiragana,
    this.katakana,
    this.romaji,
    this.family,
    this.classification,
  });

  KanaModel.fromJson(Map<String, dynamic> jsonObj) {
    id = jsonObj['id'];
    hiragana = jsonObj['hiragana'];
    katakana = jsonObj['katakana'];
    romaji = jsonObj['romaji'];
    family = jsonObj['family'];
    classification = jsonObj['classification'];
  }
}
