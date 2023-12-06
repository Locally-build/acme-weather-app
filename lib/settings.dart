import 'package:flutter/material.dart';
import 'package:acme_weather_app/constants/colors.dart';
import 'package:acme_weather_app/services/settings_service.dart';
import 'package:provider/provider.dart';

import 'models/city.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = false;
  }

  Future<void> _removeCity(City city) async {
    setState(() {
      _loading = true;
    });

    var settings = Provider.of<SettingsService>(context, listen: false);
    var shouldRemove = await _showRemoveCityDialog(context, city);
    if (shouldRemove == true) {
      await settings.removeCity(city);
    }
  }

  Future<bool?> _showRemoveCityDialog(BuildContext context, City city) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Remove City?'),
          content: SizedBox(
              height: 60,
              child: Column(children: [
                Text(
                    "Are you sure you want to remove ${city.name} from the weather forecast?"),
              ])),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsService>(builder: (context, settings, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        backgroundColor: AppColors.secondary,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(children: [
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(style: TextStyle(fontSize: 20), "Cities")),
                for (var city in settings.cities)
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                          decoration: const BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: ListTile(
                            title: Text(city.name),
                            subtitle: Text(city.countryCode),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () async {
                                await _removeCity(city);
                              },
                            ),
                          ))),
              ])),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () async {
                          await settings.clear();
                        },
                        label: const Text("Delete All"),
                        icon: const Icon(
                          Icons.recycling,
                        )),
                  ],
                ),
              )
            ]),
      );
    });
  }
}
