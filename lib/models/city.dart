import 'package:acme_weather_app/services/country_code.dart';

class City {
  final String name;
  final String countryCode;
  final String countryName;
  final String state;

  City({
    required this.name,
    required this.countryCode,
    required this.countryName,
    required this.state,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name: json['name'],
      countryName: Countries().getCountryByAlpha2Code(json['country']).name,
      countryCode: json['country'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'country': countryCode,
        'state': state,
      };
}
