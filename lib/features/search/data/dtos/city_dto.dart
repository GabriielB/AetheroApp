import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_dto.freezed.dart';
part 'city_dto.g.dart';

@freezed
abstract class CityDto with _$CityDto {
  const factory CityDto({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    String? country,
    String? admin1,
    String? timezone,
  }) = _CityDto;

  factory CityDto.fromJson(Map<String, dynamic> json) =>
      _$CityDtoFromJson(json);
}
