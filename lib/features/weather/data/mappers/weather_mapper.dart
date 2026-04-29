import '../../domain/entities/weather.dart';
import '../dtos/weather_dto.dart';

extension WeatherMapper on WeatherDto {
  Weather toEntity() {
    return Weather(
      temperature: currentWeather.temperature,
      weatherCode: currentWeather.weathercode,
    );
  }
}
