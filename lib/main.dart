import 'package:flutter/material.dart';
import 'package:acme_weather_app/constants/constants.dart';
import 'package:acme_weather_app/settings.dart';
import 'package:acme_weather_app/services/settings_service.dart';
import 'package:acme_weather_app/splashscreen.dart';
import 'package:acme_weather_app/services/weather_service.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/theme.dart';
import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
  SettingsService preferenceService = SettingsService(sharedPrefs: sharedPrefs);

  runApp(ParallelsWeatherDemoApp(
    sharedPrefs: sharedPrefs,
    preferenceService: preferenceService,
  ));
}

class ParallelsWeatherDemoApp extends StatelessWidget {
  final SharedPreferences sharedPrefs;
  final SettingsService preferenceService;

  const ParallelsWeatherDemoApp(
      {super.key, required this.sharedPrefs, required this.preferenceService});
  final initialRoute = '/splashscreen';

  @override
  Widget build(BuildContext context) {
    final WeatherService weatherService = WeatherService();
    final SettingsService settingsService =
        SettingsService(sharedPrefs: sharedPrefs);

    return MultiProvider(
        providers: [
          Provider(create: (_) => sharedPrefs),
          ChangeNotifierProvider<WeatherService>(create: (_) => weatherService),
          ChangeNotifierProvider<SettingsService>(
              create: (context) => settingsService),
        ],
        child: MaterialApp(
          title: Constants.appTitle,
          theme: appTheme,
          initialRoute: initialRoute,
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/':
                return _createRoute(
                    HomePage(
                        title: Constants.appTitle,
                        sharedPrefs: sharedPrefs,
                        preferenceService: preferenceService),
                    settings);
              case '/preferences':
                return _createRoute(const SettingsPage(), settings);
              case '/splashscreen':
                return _createRoute(
                    SplashScreen(
                      weatherService: weatherService,
                    ),
                    settings);
              default:
                return null;
            }
          },
        ));
  }
}

PageRoute _createRoute(Widget page, RouteSettings settings) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
