import 'package:flutter_rocket/models/all_models.dart';

class Location {
  List<Pad> pads;
  int id;
  String name;
  String infoUrl;
  String wikiUrl;
  String countryCode;

  Location({
    this.pads,
    this.id,
    this.name,
    this.infoUrl,
    this.wikiUrl,
    this.countryCode,
  });

  factory Location.fromJson(Map<String, dynamic> json) => new Location(
    pads: new List<Pad>.from(json["pads"].map((x) => Pad.fromJson(x))),
    id: json["id"],
    name: json["name"],
    infoUrl: json["infoURL"],
    wikiUrl: json["wikiURL"],
    countryCode: json["countryCode"],
  );

  Map<String, dynamic> toJson() => {
    "pads": new List<dynamic>.from(pads.map((x) => x.toJson())),
    "id": id,
    "name": name,
    "infoURL": infoUrl,
    "wikiURL": wikiUrl,
    "countryCode": countryCode,
  };
}