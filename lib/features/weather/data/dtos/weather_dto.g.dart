// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => _WeatherDto(
  current: CurrentWeatherDto.fromJson(json['current'] as Map<String, dynamic>),
  hourly: HourlyDto.fromJson(json['hourly'] as Map<String, dynamic>),
  daily: DailyDto.fromJson(json['daily'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WeatherDtoToJson(_WeatherDto instance) =>
    <String, dynamic>{
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

_CurrentWeatherDto _$CurrentWeatherDtoFromJson(Map<String, dynamic> json) =>
    _CurrentWeatherDto(
      time: json['time'] as String,
      temperature2m: (json['temperature_2m'] as num).toDouble(),
      apparentTemperature: (json['apparent_temperature'] as num).toDouble(),
      relativeHumidity2m: (json['relative_humidity_2m'] as num).toDouble(),
      isDay: (json['is_day'] as num).toInt(),
      weatherCode: (json['weather_code'] as num).toInt(),
      windSpeed10m: (json['wind_speed_10m'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentWeatherDtoToJson(_CurrentWeatherDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'apparent_temperature': instance.apparentTemperature,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'is_day': instance.isDay,
      'weather_code': instance.weatherCode,
      'wind_speed_10m': instance.windSpeed10m,
    };

_HourlyDto _$HourlyDtoFromJson(Map<String, dynamic> json) => _HourlyDto(
  time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
  temperature2m: (json['temperature_2m'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  apparentTemperature: (json['apparent_temperature'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  relativeHumidity2m: (json['relative_humidity_2m'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  windSpeed10m: (json['wind_speed_10m'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  precipitation: (json['precipitation'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  precipitationProbability: (json['precipitation_probability'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  uvIndex: (json['uv_index'] as List<dynamic>).map((e) => e as num).toList(),
);

Map<String, dynamic> _$HourlyDtoToJson(_HourlyDto instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
      'apparent_temperature': instance.apparentTemperature,
      'relative_humidity_2m': instance.relativeHumidity2m,
      'wind_speed_10m': instance.windSpeed10m,
      'precipitation': instance.precipitation,
      'precipitation_probability': instance.precipitationProbability,
      'uv_index': instance.uvIndex,
    };

_DailyDto _$DailyDtoFromJson(Map<String, dynamic> json) => _DailyDto(
  time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
  temperature2mMax: (json['temperature_2m_max'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  temperature2mMin: (json['temperature_2m_min'] as List<dynamic>)
      .map((e) => e as num)
      .toList(),
  sunrise: (json['sunrise'] as List<dynamic>).map((e) => e as String).toList(),
  sunset: (json['sunset'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$DailyDtoToJson(_DailyDto instance) => <String, dynamic>{
  'time': instance.time,
  'temperature_2m_max': instance.temperature2mMax,
  'temperature_2m_min': instance.temperature2mMin,
  'sunrise': instance.sunrise,
  'sunset': instance.sunset,
};
