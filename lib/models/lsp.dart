class Lsp {
  int id;
  String name;
  String abbrev;
  String countryCode;
  int type;
  String infoUrl;
  String wikiUrl;
  String changed;
  List<String> infoUrLs;

  Lsp({
    this.id,
    this.name,
    this.abbrev,
    this.countryCode,
    this.type,
    this.infoUrl,
    this.wikiUrl,
    this.changed,
    this.infoUrLs,
  });

  factory Lsp.fromJson(Map<String, dynamic> json) => new Lsp(
    id: json["id"],
    name: json["name"],
    abbrev: json["abbrev"],
    countryCode: json["countryCode"],
    type: json["type"],
    infoUrl: json["infoURL"] == null ? null : json["infoURL"],
    wikiUrl: json["wikiURL"],
    changed: json["changed"],
    infoUrLs: new List<String>.from(json["infoURLs"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "abbrev": abbrev,
    "countryCode": countryCode,
    "type": type,
    "infoURL": infoUrl == null ? null : infoUrl,
    "wikiURL": wikiUrl,
    "changed": changed,
    "infoURLs": new List<dynamic>.from(infoUrLs.map((x) => x)),
  };
}