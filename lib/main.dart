import 'package:aethero/app/app.dart';
import 'package:aethero/features/search/domain/entities/city.dart';
import 'package:aethero/features/weather/domain/entities/hourly_weather.dart';
import 'package:aethero/features/weather/domain/entities/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hive_ce_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CityAdapter());
  Hive.registerAdapter(WeatherAdapter());
  Hive.registerAdapter(HourlyWeatherAdapter());

  await Hive.openBox<City>('favorites_box');
  await Hive.openBox<Weather>('weather_cache_box');
  runApp(const ProviderScope(child: AetheroApp()));
}
