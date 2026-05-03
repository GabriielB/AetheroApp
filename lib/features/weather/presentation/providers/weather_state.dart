import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.empty() = _Empty;
  const factory WeatherState.success(Weather weather) = _Success;
  const factory WeatherState.error(String message) = _Error;
}
