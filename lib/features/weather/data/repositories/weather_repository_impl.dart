import 'package:aethero/features/weather/data/datasources/weather_remove_datasource.dart';

import '../../domain/entities/weather.dart';
import '../mappers/weather_mapper.dart';

class WeatherRepositoryImpl {
  final WeatherRemoteDataSource datasource;

  WeatherRepositoryImpl(this.datasource);

  Future<Weather> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    final dto = await datasource.getWeather(
      latitude: latitude,
      longitude: longitude,
    );

    return dto.toEntity();
  }
}
