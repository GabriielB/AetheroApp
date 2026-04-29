import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
abstract class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    @JsonKey(name: 'current_weather') required CurrentWeatherDto currentWeather,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

@freezed
abstract class CurrentWeatherDto with _$CurrentWeatherDto {
  const factory CurrentWeatherDto({
    required double temperature,
    required int weathercode,
  }) = _CurrentWeatherDto;

  factory CurrentWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDtoFromJson(json);
}
