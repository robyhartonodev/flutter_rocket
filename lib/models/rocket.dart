import 'package:flutter_rocket/models/all_models.dart';

class Rocket {
  int id;
  String name;
  String configuration;
  String familyname;
  List<Lsp> agencies;
  String wikiUrl;
  List<String> infoUrLs;
  List<int> imageSizes;
  String imageUrl;
  String infoUrl;

  Rocket({
    this.id,
    this.name,
    this.configuration,
    this.familyname,
    this.agencies,
    this.wikiUrl,
    this.infoUrLs,
    this.imageSizes,
    this.imageUrl,
    this.infoUrl,
  });

  factory Rocket.fromJson(Map<String, dynamic> json) => new Rocket(
    id: json["id"],
    name: json["name"],
    configuration: json["configuration"],
    familyname: json["familyname"],
    agencies: new List<Lsp>.from(json["agencies"].map((x) => Lsp.fromJson(x))),
    wikiUrl: json["wikiURL"],
    infoUrLs: new List<String>.from(json["infoURLs"].map((x) => x)),
    imageSizes: new List<int>.from(json["imageSizes"].map((x) => x)),
    imageUrl: json["imageURL"],
    infoUrl: json["infoURL"] == null ? null : json["infoURL"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "configuration": configuration,
    "familyname": familyname,
    "agencies": new List<dynamic>.from(agencies.map((x) => x.toJson())),
    "wikiURL": wikiUrl,
    "infoURLs": new List<dynamic>.from(infoUrLs.map((x) => x)),
    "imageSizes": new List<dynamic>.from(imageSizes.map((x) => x)),
    "imageURL": imageUrl,
    "infoURL": infoUrl == null ? null : infoUrl,
  };
}
