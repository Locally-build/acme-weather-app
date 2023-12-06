import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:acme_weather_app/constants/constants.dart';
import 'package:acme_weather_app/main.dart';
import 'package:acme_weather_app/services/weather_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  final WeatherService weatherService;
  const SplashScreen({super.key, required this.weatherService});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? message = 'Loading...';
  @override
  void initState() {
    super.initState();
    cacheIcons().then((value) {
      setState(() {
        message = 'Finished Loading...';
      });

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/',
          (route) => false,
        );
      });
    });
  }

  Future<void> cacheIcons() async {
    setState(() {
      message = 'Caching icons...';
    });
    for (int i = 0; i < Constants.icons.length; i++) {
      setState(() {
        message = 'Caching ${Constants.icons[i]} weather icon...';
      });
      var result = await widget.weatherService.getIcon(Constants.icons[i]);
      if (!result) {
        throw Exception('Failed to cache icons');
      }
    }

    setState(() {
      message = 'Finished Caching icons...';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                height: 100,
                child: Image.asset(
                  'assets/img/acme_logo.png',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.contain,
                )),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(message ?? ""),
            ]),
            const Padding(
                padding: EdgeInsets.all(15),
                child: Center(child: CircularProgressIndicator()))
          ]),
    );
  }
}
