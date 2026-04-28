// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nominatim_place_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NominatimPlaceDto _$NominatimPlaceDtoFromJson(Map<String, dynamic> json) =>
    _NominatimPlaceDto(
      displayName: json['display_name'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      type: json['type'] as String?,
      address: json['address'] == null
          ? null
          : NominatimAddressDto.fromJson(
              json['address'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$NominatimPlaceDtoToJson(_NominatimPlaceDto instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'lat': instance.lat,
      'lon': instance.lon,
      'type': instance.type,
      'address': instance.address,
    };
