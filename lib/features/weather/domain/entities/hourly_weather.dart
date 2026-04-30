class HourlyWeather {
  final DateTime time;

  final double temperature;
  final double apparentTemperature;

  final double humidity;
  final double windSpeed;

  final double precipitation;
  final double precipitationProbability;

  final double uvIndex;

  const HourlyWeather({
    required this.time,
    required this.temperature,
    required this.apparentTemperature,
    required this.humidity,
    required this.windSpeed,
    required this.precipitation,
    required this.precipitationProbability,
    required this.uvIndex,
  });
}
