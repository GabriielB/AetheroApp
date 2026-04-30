import '../../domain/entities/weather.dart';
import '../../domain/entities/hourly_weather.dart';
import '../dtos/weather_dto.dart';

extension WeatherMapper on WeatherDto {
  Weather toEntity() {
    String formatTime(String fullDate) {
      if (fullDate.isEmpty || !fullDate.contains('T')) return "--:--";
      return fullDate.split('T').last;
    }

    // Helper para pegar o primeiro valor de uma lista com segurança
    double firstOrZero(List<num>? list) {
      if (list == null || list.isEmpty) return 0.0;
      return list.first.toDouble();
    }

    return Weather(
      // Dados do Current
      temperature: current.temperature2m,
      apparentTemperature: current.apparentTemperature,
      weatherCode: current.weatherCode,
      isDay: current.isDay == 1,
      windSpeed: current.windSpeed10m,
      humidity: current.relativeHumidity2m,

      // Dados do Hourly (Usando o helper para evitar erro de null/empty)
      uvIndex: firstOrZero(hourly.uvIndex),
      precipitation: firstOrZero(hourly.precipitation),
      precipitationProbability: firstOrZero(hourly.precipitationProbability),

      // Dados do Daily
      tempMax: firstOrZero(daily.temperature2mMax),
      tempMin: firstOrZero(daily.temperature2mMin),
      sunrise: daily.sunrise.isNotEmpty
          ? formatTime(daily.sunrise.first)
          : "--:--",
      sunset: daily.sunset.isNotEmpty
          ? formatTime(daily.sunset.first)
          : "--:--",
    );
  }

  List<HourlyWeather> toHourlyList() {
    final times = hourly.time;
    if (times.isEmpty) return [];

    return List.generate(times.length, (i) {
      double getValue(List<num>? list, int index) {
        if (list == null || index >= list.length) return 0.0;
        return list[index].toDouble();
      }

      return HourlyWeather(
        time: DateTime.parse(times[i]),
        temperature: getValue(hourly.temperature2m, i),
        apparentTemperature: getValue(hourly.apparentTemperature, i),

        humidity: getValue(hourly.relativeHumidity2m, i),
        windSpeed: getValue(hourly.windSpeed10m, i),

        precipitation: getValue(hourly.precipitation, i),
        precipitationProbability: getValue(hourly.precipitationProbability, i),
        uvIndex: getValue(hourly.uvIndex, i),
      );
    });
  }
}
