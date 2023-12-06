class Weather {
  String? dateTime;
  String? id;
  String? type;
  String? temperature;
  String? description;
  String? feelsLike;
  String? humidity;
  String? windSpeed;
  String? maxTemperature;
  String? minTemperature;
  String? pressure;
  String? icon;

  Weather({
    this.dateTime,
    this.id,
    this.type,
    this.temperature,
    this.description,
    this.feelsLike,
    this.humidity,
    this.windSpeed,
    this.maxTemperature,
    this.minTemperature,
    this.pressure,
    this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      dateTime: json['dateTime'],
      id: json['id'].toString(),
      type: json['type'],
      temperature: json['temperature'].toString(),
      description: json['description'],
      feelsLike: json['feels_like'],
      humidity: json['humidity'],
      windSpeed: json['speed'],
      maxTemperature: json['maxTemperature'],
      minTemperature: json['minTemperature'],
      pressure: json['pressure'],
      icon: json['icon'],
    );
  }

  Map<String, dynamic> toJson() => {
        'dateTime': dateTime,
        'id': id,
        'type': type,
        'temperature': temperature,
        'description': description,
        'feels_like': feelsLike,
        'humidity': humidity,
        'speed': windSpeed,
        'maxTemperature': maxTemperature,
        'minTemperature': minTemperature,
        'pressure': pressure,
        'icon': icon,
      };
}
