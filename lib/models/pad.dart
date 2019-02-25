import 'package:flutter_rocket/models/all_models.dart';

class Pad {
  int id;
  String name;
  String infoUrl;
  String wikiUrl;
  String mapUrl;
  double latitude;
  double longitude;
  List<Lsp> agencies;

  Pad({
    this.id,
    this.name,
    this.infoUrl,
    this.wikiUrl,
    this.mapUrl,
    this.latitude,
    this.longitude,
    this.agencies,
  });

  factory Pad.fromJson(Map<String, dynamic> json) => new Pad(
    id: json["id"],
    name: json["name"],
    infoUrl: json["infoURL"] == null ? null : json["infoURL"],
    wikiUrl: json["wikiURL"],
    mapUrl: json["mapURL"],
    latitude: json["latitude"].toDouble(),
    longitude: json["longitude"].toDouble(),
    agencies: json["agencies"] == null ? null : new List<Lsp>.from(json["agencies"].map((x) => Lsp.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "infoURL": infoUrl == null ? null : infoUrl,
    "wikiURL": wikiUrl,
    "mapURL": mapUrl,
    "latitude": latitude,
    "longitude": longitude,
    "agencies": agencies == null ? null : new List<dynamic>.from(agencies.map((x) => x.toJson())),
  };
}