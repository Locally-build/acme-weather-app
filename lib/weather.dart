import 'dart:io';

import 'package:acme_weather_app/constants/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:acme_weather_app/services/weather_service.dart';
import 'package:path_provider/path_provider.dart';

import 'constants/colors.dart';
import 'models/city.dart';
import 'models/forecast_response.dart';

class WeatherForecast extends StatefulWidget {
  final City city;
  final WeatherService weatherService;
  const WeatherForecast(
      {super.key, required this.city, required this.weatherService});

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  ForecastResponse? _forecastResponse;
  bool _loading = false;
  Directory? _iconDir;

  @override
  void initState() {
    super.initState();
    _loading = false;
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await _getForecast();
  }

  Future<ForecastResponse> _getForecast() async {
    if (!kIsWeb) {
      _iconDir = await getTemporaryDirectory();
    }
    _forecastResponse = await widget.weatherService.getWeather(widget.city);
    return Future.delayed(const Duration(seconds: 0), () {
      return _forecastResponse!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ForecastResponse>(
        future: _getForecast(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (_loading) {
              return Container(
                  decoration: const BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                      child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: AppColors.background,
                          ))));
            } else {
              return Container(
                  decoration: const BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    Row(children: [
                      if (_forecastResponse == null ||
                          _forecastResponse!.city == null)
                        const Text("No data available for this city")
                      else
                        Column(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width - 10,
                                height: 50,
                                child: ListTile(
                                  title: Text(widget.city.name),
                                  subtitle: Text(widget.city.countryName),
                                  trailing: IconButton(
                                    icon: const Icon(Icons.refresh, size: 20),
                                    onPressed: () async {
                                      setState(() {
                                        _loading = true;
                                      });
                                      await _getForecast();
                                      setState(() {
                                        _loading = false;
                                      });
                                    },
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width - 10,
                                child: const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Divider(
                                      thickness: 1,
                                      color: AppColors.text,
                                    ))),
                            Row(children: [
                              SizedBox(
                                  height: 130,
                                  width: MediaQuery.of(context).size.width - 10,
                                  child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (var forecast
                                            in _forecastResponse!.weather!)
                                          if (_forecastResponse!.weather !=
                                              null)
                                            SizedBox(
                                                width: 80,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                        DateFormat('MMMEd').format(
                                                            DateTime.parse(forecast
                                                                    .dateTime ??
                                                                DateTime.now()
                                                                    .toString())),
                                                        style: const TextStyle(
                                                            fontSize: 12)),
                                                    Text(
                                                        DateFormat('jm').format(
                                                            DateTime.parse(forecast
                                                                    .dateTime ??
                                                                DateTime.now()
                                                                    .toString())),
                                                        style: const TextStyle(
                                                            fontSize: 12)),
                                                    if (kIsWeb)
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 5),
                                                          child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child: Image.network(
                                                                  '${Constants.iconBaseUrl}/${forecast.icon}'))),
                                                    if (!kIsWeb)
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(top: 5),
                                                          child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child: Image.file(
                                                                  File(
                                                                      '${_iconDir!.path}/${forecast.icon}.png')))),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 5),
                                                        child: Text(
                                                            forecast.type ??
                                                                "")),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 5),
                                                        child: Text(
                                                            "${forecast.temperature ?? "-"} °C",
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        12))),
                                                  ],
                                                ))
                                      ]))
                            ]),
                          ],
                        )
                    ])
                  ]));
            }
          } else if (snapshot.hasError) {
            return Center(
                child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: SizedBox(
                        height: 170,
                        width: MediaQuery.of(context).size.width - 10,
                        child: Center(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                              Expanded(
                                  child: Center(
                                      child: Text(
                                          "There was an error loading the forecast for ${widget.city.name}"))),
                              Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: ElevatedButton.icon(
                                      onPressed: () async {
                                        await _getForecast();
                                      },
                                      label: const Text("Refresh"),
                                      icon: const Icon(
                                        Icons.refresh,
                                      ))),
                            ])))));
          } else {
            return const Center(
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      color: AppColors.background,
                    )));
          }
        });
  }
}
