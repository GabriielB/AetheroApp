import 'package:aethero/features/weather/domain/entities/hourly_weather.dart';

class Weather {
  final List<HourlyWeather> hourlyForecast;
  final double temperature;
  final double apparentTemperature;
  final int weatherCode;
  final bool isDay;
  final double windSpeed;
  final double humidity;
  final double uvIndex;
  final double precipitation;
  final double precipitationProbability;

  final double tempMax;
  final double tempMin;
  final String sunrise;
  final String sunset;

  const Weather({
    required this.hourlyForecast,
    required this.temperature,
    required this.apparentTemperature,
    required this.weatherCode,
    required this.isDay,
    required this.windSpeed,
    required this.humidity,
    required this.uvIndex,
    required this.precipitation,
    required this.precipitationProbability,
    required this.tempMax,
    required this.tempMin,
    required this.sunrise,
    required this.sunset,
  });
}
