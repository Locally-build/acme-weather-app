import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:acme_weather_app/constants/constants.dart';
import 'package:acme_weather_app/models/forecast_response.dart';
import 'package:path_provider/path_provider.dart';

import '../models/city.dart';

class WeatherService with ChangeNotifier {
  Future<ForecastResponse> getWeather(City city) async {
    // throw Exception('Failed to load weather');
    var baseUrl = Constants.baseUrl;
    var url =
        Uri.parse('$baseUrl/weather/${city.countryCode}/${city.name}/forecast');
    final resp = await http.get(url);

    if (resp.statusCode == 200) {
      ForecastResponse response =
          ForecastResponse.fromJson(json.decode(resp.body));
      return response;
    } else {
      throw Exception('Failed to load weather');
    }
  }

  Future<bool> getIcon(String icon) async {
    if (kIsWeb) {
      return true;
    }

    var baseUrl = Constants.iconBaseUrl;
    var url = Uri.parse('$baseUrl/$icon');
    final resp = await http.get(url);

    if (resp.statusCode == 200) {
      final directory = await getTemporaryDirectory();
      final file = File('${directory.path}/$icon.png');
      file.writeAsBytesSync(resp.bodyBytes);
      return true;
    } else {
      throw Exception('Failed to download icon');
    }
  }
}

// generate a csv list with all the countr iso codes
// https://www.iban.com/country-codes
// https://www.iban.com/country-codes
