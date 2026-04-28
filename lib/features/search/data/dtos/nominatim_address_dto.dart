import 'package:freezed_annotation/freezed_annotation.dart';

part 'nominatim_address_dto.freezed.dart';
part 'nominatim_address_dto.g.dart';

@freezed
abstract class NominatimAddressDto with _$NominatimAddressDto {
  const factory NominatimAddressDto({
    String? city,
    String? town,
    String? village,
    String? suburb,
    String? state,
    String? country,
  }) = _NominatimAddressDto;

  factory NominatimAddressDto.fromJson(Map<String, dynamic> json) =>
      _$NominatimAddressDtoFromJson(json);
}
