import 'package:flutter_rocket/models/all_models.dart';

class LaunchElement {
  int id;
  String name;
  String windowstart;
  String windowend;
  String net;
  int wsstamp;
  int westamp;
  int netstamp;
  String isostart;
  String isoend;
  String isonet;
  int status;
  int inhold;
  int tbdtime;
  List<String> vidUrLs;
  dynamic vidUrl;
  List<dynamic> infoUrLs;
  dynamic infoUrl;
  dynamic holdreason;
  dynamic failreason;
  int tbddate;
  int probability;
  String hashtag;
  String changed;
  Location location;
  Rocket rocket;
  List<Mission> missions;
  Lsp lsp;

  LaunchElement({
    this.id,
    this.name,
    this.windowstart,
    this.windowend,
    this.net,
    this.wsstamp,
    this.westamp,
    this.netstamp,
    this.isostart,
    this.isoend,
    this.isonet,
    this.status,
    this.inhold,
    this.tbdtime,
    this.vidUrLs,
    this.vidUrl,
    this.infoUrLs,
    this.infoUrl,
    this.holdreason,
    this.failreason,
    this.tbddate,
    this.probability,
    this.hashtag,
    this.changed,
    this.location,
    this.rocket,
    this.missions,
    this.lsp,
  });

  factory LaunchElement.fromJson(Map<String, dynamic> json) => new LaunchElement(
    id: json["id"],
    name: json["name"],
    windowstart: json["windowstart"],
    windowend: json["windowend"],
    net: json["net"],
    wsstamp: json["wsstamp"],
    westamp: json["westamp"],
    netstamp: json["netstamp"],
    isostart: json["isostart"],
    isoend: json["isoend"],
    isonet: json["isonet"],
    status: json["status"],
    inhold: json["inhold"],
    tbdtime: json["tbdtime"],
    vidUrLs: new List<String>.from(json["vidURLs"].map((x) => x)),
    vidUrl: json["vidURL"],
    infoUrLs: new List<dynamic>.from(json["infoURLs"].map((x) => x)),
    infoUrl: json["infoURL"],
    holdreason: json["holdreason"],
    failreason: json["failreason"],
    tbddate: json["tbddate"],
    probability: json["probability"],
    hashtag: json["hashtag"] == null ? null : json["hashtag"],
    changed: json["changed"],
    location: Location.fromJson(json["location"]),
    rocket: Rocket.fromJson(json["rocket"]),
    missions: new List<Mission>.from(json["missions"].map((x) => Mission.fromJson(x))),
    lsp: Lsp.fromJson(json["lsp"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "windowstart": windowstart,
    "windowend": windowend,
    "net": net,
    "wsstamp": wsstamp,
    "westamp": westamp,
    "netstamp": netstamp,
    "isostart": isostart,
    "isoend": isoend,
    "isonet": isonet,
    "status": status,
    "inhold": inhold,
    "tbdtime": tbdtime,
    "vidURLs": new List<dynamic>.from(vidUrLs.map((x) => x)),
    "vidURL": vidUrl,
    "infoURLs": new List<dynamic>.from(infoUrLs.map((x) => x)),
    "infoURL": infoUrl,
    "holdreason": holdreason,
    "failreason": failreason,
    "tbddate": tbddate,
    "probability": probability,
    "hashtag": hashtag == null ? null : hashtag,
    "changed": changed,
    "location": location.toJson(),
    "rocket": rocket.toJson(),
    "missions": new List<dynamic>.from(missions.map((x) => x.toJson())),
    "lsp": lsp.toJson(),
  };
}