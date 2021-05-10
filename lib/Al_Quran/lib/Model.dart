import 'dart:convert';

List<Model> modelFromJson(String str) =>
    List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String modelToJson(List<Model> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  Model({
    this.name,
    this.nameTranslations,
    this.numberOfAyah,
    this.numberOfSurah,
    this.place,
    this.recitation,
    this.type,
  });

  String name;
  NameTranslations nameTranslations;
  int numberOfAyah;
  int numberOfSurah;
  Place place;
  String recitation;
  Type type;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    name: json["name"],
    nameTranslations: NameTranslations.fromJson(json["name_translations"]),
    numberOfAyah: json["number_of_ayah"],
    numberOfSurah: json["number_of_surah"],
    place: placeValues.map[json["place"]],
    recitation: json["recitation"],
    type: typeValues.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "name_translations": nameTranslations.toJson(),
    "number_of_ayah": numberOfAyah,
    "number_of_surah": numberOfSurah,
    "place": placeValues.reverse[place],
    "recitation": recitation,
    "type": typeValues.reverse[type],
  };
}

class NameTranslations {
  NameTranslations({
    this.ar,
    this.en,
    this.id,
  });

  String ar;
  String en;
  String id;

  factory NameTranslations.fromJson(Map<String, dynamic> json) =>
      NameTranslations(
        ar: json["ar"],
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
    "ar": ar,
    "en": en,
    "id": id,
  };
}

enum Place { MECCA, MEDINA }

final placeValues = EnumValues({"Mecca": Place.MECCA, "Medina": Place.MEDINA});

enum Type { MAKKIYAH, MADANIYAH }

final typeValues =
EnumValues({"Madaniyah": Type.MADANIYAH, "Makkiyah": Type.MAKKIYAH});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
