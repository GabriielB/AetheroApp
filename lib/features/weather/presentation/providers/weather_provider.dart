import 'package:aethero/core/navigation/providers/selected_city_provider.dart';
import 'package:aethero/features/weather/data/datasources/weather_remove_datasource.dart';
import 'package:aethero/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _dioProvider = Provider((ref) => Dio());
final _weatherRepositoryProvider = Provider((ref) {
  final dio = ref.watch(_dioProvider);
  return WeatherRepositoryImpl(WeatherRemoteDataSource(dio));
});

final weatherProvider = FutureProvider((ref) async {
  final city = ref.watch(selectedCityProvider);

  if (city == null) return null;

  final repository = ref.read(_weatherRepositoryProvider);

  try {
    return await repository.getWeather(
      latitude: city.latitude,
      longitude: city.longitude,
      cityId: city.id,
    );
  } catch (e) {
    rethrow;
  }
});
