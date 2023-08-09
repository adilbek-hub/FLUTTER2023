class WeatherResponse {
  WeatherResponse({
    required this.weather,
    required this.main,
    required this.name,
  });
  final List<Weather> weather;
  final Main main;
  final String name;
}

class Weather {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
  final int id;
  final String main;
  final String description;
  final String icon;
}

class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
  });
  final num temp;
  final num feelsLike;
  final num tempMin;
  final num tempMax;
}
