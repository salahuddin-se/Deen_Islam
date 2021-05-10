// To parse this JSON data, do
//
//     final hadith = hadithFromJson(jsonString);

import 'dart:convert';

List<Hadith> hadithFromJson(String str) => List<Hadith>.from(json.decode(str).map((x) => Hadith.fromJson(x)));

String hadithToJson(List<Hadith> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Hadith {
  Hadith({
    this.id,
    this.name,
    this.description,
    this.references,
    this.grade,
  });

  int id;
  String name;
  String description;
  String references;
  String grade;

  factory Hadith.fromJson(Map<String, dynamic> json) => Hadith(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    references: json["references"],
    grade: json["grade"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "references": references,
    "grade": grade,
  };
}
