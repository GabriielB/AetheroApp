import 'package:aethero/core/navigation/providers/selected_city_provider.dart';
import 'package:aethero/features/weather/data/datasources/weather_remove_datasource.dart';
import 'package:aethero/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final weatherProvider = FutureProvider((ref) async {
  final city = ref.watch(selectedCityProvider);

  if (city == null) return null;

  final dio = Dio();
  final datasource = WeatherRemoteDataSource(dio);
  final repository = WeatherRepositoryImpl(datasource);

  return repository.getWeather(
    latitude: city.latitude,
    longitude: city.longitude,
  );
});
