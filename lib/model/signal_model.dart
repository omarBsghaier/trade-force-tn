// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Signals> signalsFromJson(String str) => List<Signals>.from(json.decode(str).map((x) => Signals.fromJson(x)));

String signalsToJson(List<Signals> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Signals {
  Signals({
    required this.id,
   required this.userId,
    required this.pair,
    required this.strategy,
    required  this.entryPrice,
    required  this.performance,
    required this.description,
      this.v,
  });

  String id;
  String userId;
  String pair;
  String strategy;
  String entryPrice;
  String performance;
  String description;
  int ?  v;

  factory Signals.fromJson(Map<String, dynamic> json) => Signals(
    id: json["_id"],
    userId: json["userId"],
    pair: json["pair"],
    strategy: json["strategy"],
    entryPrice: json["entryPrice"],
    performance: json["performance"],
    description: json["description"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "userId": userId,
    "pair": pair,
    "strategy": strategy,
    "entryPrice": entryPrice,
    "performance": performance,
    "description": description,
    "__v": v,
  };
}
