import 'package:aethero/features/weather/domain/entities/hourly_weather.dart';
import 'package:hive_ce/hive.dart';
part 'weather.g.dart';

@HiveType(typeId: 1)
class Weather {
  @HiveField(0)
  final List<HourlyWeather> hourlyForecast;

  @HiveField(1)
  final double temperature;

  @HiveField(2)
  final double apparentTemperature;

  @HiveField(3)
  final int weatherCode;

  @HiveField(4)
  final bool isDay;

  @HiveField(5)
  final double windSpeed;

  @HiveField(6)
  final double humidity;

  @HiveField(7)
  final double uvIndex;

  @HiveField(8)
  final double precipitation;

  @HiveField(9)
  final double precipitationProbability;

  @HiveField(10)
  final double tempMax;

  @HiveField(11)
  final double tempMin;

  @HiveField(12)
  final String sunrise;

  @HiveField(13)
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
