import 'package:hive_ce/hive.dart';
part 'hourly_weather.g.dart';

@HiveType(typeId: 2)
class HourlyWeather {
  @HiveField(0)
  final DateTime time;

  @HiveField(1)
  final double temperature;

  @HiveField(2)
  final double apparentTemperature;

  @HiveField(3)
  final double humidity;

  @HiveField(4)
  final double windSpeed;

  @HiveField(5)
  final double precipitation;

  @HiveField(6)
  final double precipitationProbability;

  @HiveField(7)
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
