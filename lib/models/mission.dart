import 'package:flutter_rocket/models/all_models.dart';

class Mission {
  int id;
  String name;
  String description;
  int type;
  String wikiUrl;
  String typeName;
  List<Lsp> agencies;
  List<Payload> payloads;

  Mission({
    this.id,
    this.name,
    this.description,
    this.type,
    this.wikiUrl,
    this.typeName,
    this.agencies,
    this.payloads,
  });

  factory Mission.fromJson(Map<String, dynamic> json) => new Mission(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    type: json["type"],
    wikiUrl: json["wikiURL"],
    typeName: json["typeName"],
    agencies: json["agencies"] == null ? null : new List<Lsp>.from(json["agencies"].map((x) => Lsp.fromJson(x))),
    payloads: new List<Payload>.from(json["payloads"].map((x) => Payload.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "type": type,
    "wikiURL": wikiUrl,
    "typeName": typeName,
    "agencies": agencies == null ? null : new List<dynamic>.from(agencies.map((x) => x.toJson())),
    "payloads": new List<dynamic>.from(payloads.map((x) => x.toJson())),
  };
}