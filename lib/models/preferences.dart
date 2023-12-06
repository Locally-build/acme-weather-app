import 'package:acme_weather_app/models/city.dart';

class Preferences {
  String defaultCity;
  String defaultState;
  String defaultCountry;

  List<City> cities;

  Preferences({
    required this.defaultCity,
    required this.defaultState,
    required this.defaultCountry,
    required this.cities,
  });

  fromJson(Map<String, dynamic> json) {
    defaultCity = json['defaultCity'];
    defaultState = json['defaultState'];
    defaultCountry = json['defaultCountry'];
    cities = json['cities'];
  }

  factory Preferences.fromJson(Map<String, dynamic> json) {
    List<City> cities =
        json['cities'].map<City>((city) => City.fromJson(city)).toList();
    return Preferences(
      defaultCity: json['defaultCity'],
      defaultState: json['defaultState'],
      defaultCountry: json['defaultCountry'],
      cities: cities,
    );
  }

  Map<String, dynamic> toJson() => {
        'defaultCity': defaultCity,
        'defaultState': defaultState,
        'defaultCountry': defaultCountry,
        'cities': cities,
      };
}
