// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_search_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitySearchResponseDto _$CitySearchResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CitySearchResponseDto(
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => CityDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$CitySearchResponseDtoToJson(
  _CitySearchResponseDto instance,
) => <String, dynamic>{'results': instance.results};
