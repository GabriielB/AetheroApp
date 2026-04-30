import 'package:dio/dio.dart';
import '../dtos/weather_dto.dart';

class WeatherRemoteDataSource {
  final Dio dio;
  WeatherRemoteDataSource(this.dio);

  Future<WeatherDto> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await dio.get(
        'https://api.open-meteo.com/v1/forecast',
        queryParameters: {
          'latitude': latitude,
          'longitude': longitude,
          'current': [
            'temperature_2m',
            'relative_humidity_2m',
            'apparent_temperature',
            'is_day',
            'weather_code',
            'wind_speed_10m',
          ],
          'hourly': [
            'temperature_2m',
            'apparent_temperature',
            'relative_humidity_2m',
            'wind_speed_10m',
            'precipitation',
            'precipitation_probability',
            'uv_index',
          ],
          'daily': [
            'temperature_2m_max',
            'temperature_2m_min',
            'sunrise',
            'sunset',
          ],
          'timezone': 'auto',
        },
      );
      // 🔥 ADICIONE ESTES PRINTS AQUI:
      print('--- DEBUG WEATHER API ---');
      print('URL COMPLETA: ${response.realUri}');
      print('JSON DE RESPOSTA: ${response.data}');
      print('-------------------------');
      return WeatherDto.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception("Falha na requisição: ${e.message}");
    }
  }
}
