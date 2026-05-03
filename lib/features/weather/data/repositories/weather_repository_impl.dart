import 'package:aethero/features/weather/data/datasources/weather_remove_datasource.dart';
import 'package:hive_ce/hive.dart';
import '../../domain/entities/weather.dart';
import '../mappers/weather_mapper.dart';

class WeatherRepositoryImpl {
  final WeatherRemoteDataSource datasource;

  WeatherRepositoryImpl(this.datasource);

  Future<Box<Weather>> _getBox() async {
    return Hive.isBoxOpen('weather_cache_box')
        ? Hive.box<Weather>('weather_cache_box')
        : await Hive.openBox<Weather>('weather_cache_box');
  }

  Future<Weather> getWeather({
    required double latitude,
    required double longitude,
    required int cityId,
  }) async {
    final box = await _getBox();
    try {
      final dto = await datasource.getWeather(
        latitude: latitude,
        longitude: longitude,
      );
      final entity = dto.toEntity();

      await box.put(cityId, entity);
      return entity;
    } catch (e) {
      if (box.containsKey(cityId)) {
        return box.get(cityId)!;
      }
      rethrow;
    }
  }
}
