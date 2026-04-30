import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
abstract class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    required CurrentWeatherDto current,
    required HourlyDto hourly,
    required DailyDto daily,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

@freezed
abstract class CurrentWeatherDto with _$CurrentWeatherDto {
  const factory CurrentWeatherDto({
    required String time,
    @JsonKey(name: 'temperature_2m') required double temperature2m,
    @JsonKey(name: 'apparent_temperature') required double apparentTemperature,
    @JsonKey(name: 'relative_humidity_2m') required double relativeHumidity2m,
    @JsonKey(name: 'is_day') required int isDay,
    @JsonKey(name: 'weather_code') required int weatherCode,
    @JsonKey(name: 'wind_speed_10m') required double windSpeed10m,
  }) = _CurrentWeatherDto;

  factory CurrentWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDtoFromJson(json);
}

@freezed
abstract class HourlyDto with _$HourlyDto {
  const factory HourlyDto({
    required List<String> time,
    @JsonKey(name: 'temperature_2m') required List<num> temperature2m,
    @JsonKey(name: 'apparent_temperature')
    required List<num> apparentTemperature,
    @JsonKey(name: 'relative_humidity_2m')
    required List<num> relativeHumidity2m,
    @JsonKey(name: 'wind_speed_10m') required List<num> windSpeed10m,
    required List<num> precipitation,
    @JsonKey(name: 'precipitation_probability')
    required List<num> precipitationProbability,
    @JsonKey(name: 'uv_index') required List<num> uvIndex,
  }) = _HourlyDto;

  factory HourlyDto.fromJson(Map<String, dynamic> json) =>
      _$HourlyDtoFromJson(json);
}

@freezed
abstract class DailyDto with _$DailyDto {
  const factory DailyDto({
    required List<String> time,
    @JsonKey(name: 'temperature_2m_max') required List<num> temperature2mMax,
    @JsonKey(name: 'temperature_2m_min') required List<num> temperature2mMin,
    required List<String> sunrise,
    required List<String> sunset,
  }) = _DailyDto;

  factory DailyDto.fromJson(Map<String, dynamic> json) =>
      _$DailyDtoFromJson(json);
}
