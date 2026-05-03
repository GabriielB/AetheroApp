import '../../domain/entities/weather.dart';
import '../../domain/entities/hourly_weather.dart';
import '../dtos/weather_dto.dart';

extension WeatherMapper on WeatherDto {
  Weather toEntity() {
    final DateTime currentLocalTime = DateTime.parse(current.time);
    final int currentHour = currentLocalTime.hour;

    //  helpper pra acessar listas baseadas na hora atual
    double getValueForCurrentHour(List<num>? list) {
      if (list == null || list.isEmpty) return 0.0;
      if (list.length > currentHour) {
        return list[currentHour].toDouble();
      }
      return list.first.toDouble();
    }

    return Weather(
      hourlyForecast: toHourlyList(),
      temperature: current.temperature2m,
      apparentTemperature: current.apparentTemperature,
      weatherCode: current.weatherCode,
      isDay: current.isDay == 1,
      windSpeed: current.windSpeed10m,
      humidity: current.relativeHumidity2m, // ajustando para o dto
      // sincroniza fuso horario
      uvIndex: getValueForCurrentHour(hourly.uvIndex),
      precipitation: getValueForCurrentHour(hourly.precipitation),
      precipitationProbability: getValueForCurrentHour(
        hourly.precipitationProbability,
      ),

      // dados diarios
      tempMax: daily.temperature2mMax.isNotEmpty
          ? daily.temperature2mMax.first.toDouble()
          : 0.0,
      tempMin: daily.temperature2mMin.isNotEmpty
          ? daily.temperature2mMin.first.toDouble()
          : 0.0,

      sunrise: daily.sunrise.isNotEmpty
          ? daily.sunrise.first.split('T').last.substring(0, 5)
          : '--:--',
      sunset: daily.sunset.isNotEmpty
          ? daily.sunset.first.split('T').last.substring(0, 5)
          : '--:--',
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
