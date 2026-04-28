// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nominatim_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NominatimAddressDto _$NominatimAddressDtoFromJson(Map<String, dynamic> json) =>
    _NominatimAddressDto(
      city: json['city'] as String?,
      town: json['town'] as String?,
      village: json['village'] as String?,
      suburb: json['suburb'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$NominatimAddressDtoToJson(
  _NominatimAddressDto instance,
) => <String, dynamic>{
  'city': instance.city,
  'town': instance.town,
  'village': instance.village,
  'suburb': instance.suburb,
  'state': instance.state,
  'country': instance.country,
};
