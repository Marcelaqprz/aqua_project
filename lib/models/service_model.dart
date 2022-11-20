// To parse this JSON data, do
//
//     final serviceModel = serviceModelFromJson(jsonString);

import 'dart:convert';

ServiceModel serviceModelFromJson(String str) => ServiceModel.fromJson(json.decode(str));

String serviceModelToJson(ServiceModel data) => json.encode(data.toJson());

class ServiceModel {
  ServiceModel({
    required this.id,
    required this.litres,
  });

  String id;
  double litres;

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
    id: json["id"],
    litres: json["litres"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "litres": litres,
  };
}
