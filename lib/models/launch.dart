// To parse this JSON data, do
//
//     final launch = launchFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_rocket/models/all_models.dart';

Launch launchFromJson(String str) {
  final jsonData = json.decode(str);
  return Launch.fromJson(jsonData);
}

String launchToJson(Launch data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

class Launch {
  List<LaunchElement> launches;
  int total;
  int offset;
  int count;

  Launch({
    this.launches,
    this.total,
    this.offset,
    this.count,
  });

  factory Launch.fromJson(Map<String, dynamic> json) => new Launch(
    launches: new List<LaunchElement>.from(json["launches"].map((x) => LaunchElement.fromJson(x))),
    total: json["total"],
    offset: json["offset"],
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "launches": new List<dynamic>.from(launches.map((x) => x.toJson())),
    "total": total,
    "offset": offset,
    "count": count,
  };
}

