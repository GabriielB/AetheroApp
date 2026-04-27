import 'package:freezed_annotation/freezed_annotation.dart';

import 'nominatim_address_dto.dart';

part 'nominatim_place_dto.freezed.dart';
part 'nominatim_place_dto.g.dart';

@freezed
abstract class NominatimPlaceDto with _$NominatimPlaceDto {
  const factory NominatimPlaceDto({
    @JsonKey(name: 'display_name') required String displayName,
    required String lat,
    required String lon,
    String? type,
    NominatimAddressDto? address,
  }) = _NominatimPlaceDto;

  factory NominatimPlaceDto.fromJson(Map<String, dynamic> json) =>
      _$NominatimPlaceDtoFromJson(json);
}
