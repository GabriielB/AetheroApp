import 'package:freezed_annotation/freezed_annotation.dart';

import 'city_dto.dart';

part 'city_search_response_dto.freezed.dart';
part 'city_search_response_dto.g.dart';

@freezed
abstract class CitySearchResponseDto with _$CitySearchResponseDto {
  const factory CitySearchResponseDto({@Default([]) List<CityDto> results}) =
      _CitySearchResponseDto;

  factory CitySearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CitySearchResponseDtoFromJson(json);
}
