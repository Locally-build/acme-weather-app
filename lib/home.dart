import 'package:flutter/material.dart';
import 'package:acme_weather_app/dialogs/add_city.dart';
import 'package:acme_weather_app/models/city.dart';
import 'package:acme_weather_app/services/country_code.dart';
import 'package:acme_weather_app/services/settings_service.dart';
import 'package:acme_weather_app/services/weather_service.dart';
import 'package:acme_weather_app/weather.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/colors.dart';

class HomePage extends StatefulWidget {
  final SharedPreferences sharedPrefs;
  final SettingsService preferenceService;

  const HomePage(
      {super.key,
      required this.title,
      required this.sharedPrefs,
      required this.preferenceService});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherService? _weatherService;
  SettingsService? _settingsService;

  @override
  void initState() {
    super.initState();
  }

  void _navigateToPreferences() {
    Navigator.of(context).pushNamed('/preferences');
  }

  void _addCity(SettingsService settingsService) async {
    City? selectedCity = await _showCustomAlertDialog(context);

    if (selectedCity != null) {
      setState(() {
        settingsService.addCity(selectedCity);
      });
    }
  }

  Future<City?> _showCustomAlertDialog(BuildContext context) async {
    return await showDialog<City>(
      context: context,
      builder: (BuildContext context) {
        return const AddCityDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsService>(builder: (context, settings, child) {
      _settingsService = settings;
      _settingsService!.load();
      _weatherService = Provider.of<WeatherService>(context);
      return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            if (settings.cities.isNotEmpty)
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: _navigateToPreferences,
              )
          ],
        ),
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              if (settings.cities.isEmpty)
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 115,
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                    text: 'Welcome to the Demo Weather App!',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    children: [
                                      TextSpan(
                                        text:
                                            '\n\nTo get started, add a city by clicking the + button below.',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ]),
                              )
                            ])))
              else
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height - 115,
                    child: Padding(
                        padding: const EdgeInsets.only(bottom: 5, top: 5),
                        child: ListView(
                          children: [
                            for (var city in settings.cities)
                              Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: SizedBox(
                                      height: 210,
                                      width: MediaQuery.of(context).size.width -
                                          20,
                                      child: WeatherForecast(
                                        city: city,
                                        weatherService: _weatherService!,
                                      )))
                          ],
                        ))),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _addCity(settings),
          tooltip: 'Add a city',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    });
  }
}
