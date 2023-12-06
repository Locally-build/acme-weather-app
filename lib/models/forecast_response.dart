// Generated by https://quicktype.io

import 'package:acme_weather_app/models/weather.dart';

class ForecastResponse {
  String? city;
  List<Weather>? weather;

  ForecastResponse({
    this.city,
    this.weather,
  });

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      ForecastResponse(
        city: json["city"],
        weather:
            List<Weather>.from(json["list"].map((x) => Weather.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "list": List<dynamic>.from(weather!.map((x) => x.toJson())),
      };
}
