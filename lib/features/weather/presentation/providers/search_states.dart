import 'package:aethero/features/search/domain/entities/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_states.freezed.dart';

@freezed
class CitySearchState with _$CitySearchState {
  const factory CitySearchState.initial() = _Initial;
  const factory CitySearchState.loading() = _Loading;
  const factory CitySearchState.empty() = _Empty;
  const factory CitySearchState.success(List<City> cities) = _Success;
  const factory CitySearchState.error(String message) = _Error;
}
