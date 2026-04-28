import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/city.dart';

part 'city_search_state.freezed.dart';

@freezed
sealed class CitySearchState with _$CitySearchState {
  const factory CitySearchState.initial() = _Initial;

  const factory CitySearchState.loading() = _Loading;

  const factory CitySearchState.success(List<City> cities) = _Success;

  const factory CitySearchState.empty() = _Empty;

  const factory CitySearchState.error(String message) = _Error;
}
