import 'package:flutter/material.dart';

import '../models/city.dart';
import '../services/country_code.dart';

class AddCityDialog extends StatefulWidget {
  const AddCityDialog({super.key});

  @override
  State<AddCityDialog> createState() => _AddCityDialogState();
}

class _AddCityDialogState extends State<AddCityDialog> {
  TextEditingController cityName = TextEditingController();
  TextEditingController countryName = TextEditingController();

  Country? selectedCountry;
  String? selectedCity;
  late List<Country> filteredCountries;

  @override
  void initState() {
    super.initState();
    filteredCountries = Countries().countries;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add City'),
      content: SingleChildScrollView(
          child: SizedBox(
              height: 140,
              width: MediaQuery.of(context).size.width - 100,
              child: Column(children: [
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: DropdownButton<Country>(
                        value: selectedCountry,
                        isExpanded: true,
                        hint: const Text("Country"),
                        items: filteredCountries.map((e) {
                          return DropdownMenuItem<Country>(
                            value: e,
                            child: Text(e.name),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedCountry = value;
                          });
                        })),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      controller: cityName,
                      onChanged: (value) {
                        setState(() {
                          if (value.length > 3) {
                            selectedCity = value;
                          }
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: 'City name, ex: london'),
                    ))
              ]))),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          onPressed: selectedCountry != null && cityName.text.isNotEmpty
              ? () {
                  final city = City(
                      name: cityName.text,
                      countryName: selectedCountry!.name,
                      countryCode: selectedCountry!.alpha2Code,
                      state: "");
                  Navigator.of(context).pop(city);
                }
              : null,
          child: const Text('Add'),
        ),
      ],
    );
  }
}
