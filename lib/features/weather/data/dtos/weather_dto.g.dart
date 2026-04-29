// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => _WeatherDto(
  currentWeather: CurrentWeatherDto.fromJson(
    json['current_weather'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$WeatherDtoToJson(_WeatherDto instance) =>
    <String, dynamic>{'current_weather': instance.currentWeather};

_CurrentWeatherDto _$CurrentWeatherDtoFromJson(Map<String, dynamic> json) =>
    _CurrentWeatherDto(
      temperature: (json['temperature'] as num).toDouble(),
      weathercode: (json['weathercode'] as num).toInt(),
    );

Map<String, dynamic> _$CurrentWeatherDtoToJson(_CurrentWeatherDto instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'weathercode': instance.weathercode,
    };
