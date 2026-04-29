import 'package:dio/dio.dart';

import '../dtos/weather_dto.dart';

class WeatherRemoteDataSource {
  final Dio dio;

  WeatherRemoteDataSource(this.dio);

  Future<WeatherDto> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    final response = await dio.get(
      'https://api.open-meteo.com/v1/forecast',
      queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
        'current_weather': true,
      },
    );

    return WeatherDto.fromJson(response.data);
  }
}
