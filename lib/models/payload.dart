class Payload {
  int id;
  String name;

  Payload({
    this.id,
    this.name,
  });

  factory Payload.fromJson(Map<String, dynamic> json) => new Payload(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}