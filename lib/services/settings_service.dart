import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:acme_weather_app/models/city.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';
import '../constants/settings_keys.dart';
import '../models/preferences.dart';

class SettingsService with ChangeNotifier {
  final SharedPreferences sharedPrefs;
  Preferences _preferences = Preferences(
    defaultCity: 'London',
    defaultState: 'gb',
    defaultCountry: 'gb',
    cities: [],
  );

  SettingsService({required this.sharedPrefs}) {
    load();
  }

  Future<List<City>> load() async {
    String? preferences = sharedPrefs.getString(SettingsKeys.preferences);
    if (preferences != null) {
      _preferences = Preferences.fromJson(json.decode(preferences));
    }
    return _preferences.cities;
  }

  List<City> get cities => _preferences.cities;

  Future<void> clear() async {
    _preferences.cities = [];
    await savePreferences();
    notifyListeners();
  }

  Future<void> savePreferences() async {
    String preferencesJson = json.encode(_preferences);
    sharedPrefs.setString(SettingsKeys.preferences, preferencesJson);
  }

  Future<void> addCity(City city) async {
    var found = false;
    for (var i = 0; i < _preferences.cities.length; i++) {
      if (_preferences.cities[i].name == city.name) {
        found = true;
        break;
      }
    }

    if (found) {
      notifyListeners();
      return;
    }

    if (_preferences.cities.isEmpty) {
      await setDefaultCity(city);
    }

    _preferences.cities.add(city);
    await savePreferences();
    notifyListeners();
  }

  Future<void> removeCity(City city) async {
    _preferences.cities.remove(city);
    await savePreferences();
    notifyListeners();
  }

  Future<void> setDefaultCity(City city) async {
    _preferences.defaultCity = city.name;
    _preferences.defaultState = city.state;
    _preferences.defaultCountry = city.countryCode;
    // await savePreferences();
  }

  Future<City> getDefaultCity() async {
    await load();
    return City(
      countryName: "",
      name: _preferences.defaultCity,
      state: _preferences.defaultState,
      countryCode: _preferences.defaultCountry,
    );
  }
}
