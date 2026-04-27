// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nominatim_place_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NominatimPlaceDto {

@JsonKey(name: 'display_name') String get displayName; String get lat; String get lon; String? get type; NominatimAddressDto? get address;
/// Create a copy of NominatimPlaceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NominatimPlaceDtoCopyWith<NominatimPlaceDto> get copyWith => _$NominatimPlaceDtoCopyWithImpl<NominatimPlaceDto>(this as NominatimPlaceDto, _$identity);

  /// Serializes this NominatimPlaceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NominatimPlaceDto&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.type, type) || other.type == type)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,lat,lon,type,address);

@override
String toString() {
  return 'NominatimPlaceDto(displayName: $displayName, lat: $lat, lon: $lon, type: $type, address: $address)';
}


}

/// @nodoc
abstract mixin class $NominatimPlaceDtoCopyWith<$Res>  {
  factory $NominatimPlaceDtoCopyWith(NominatimPlaceDto value, $Res Function(NominatimPlaceDto) _then) = _$NominatimPlaceDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'display_name') String displayName, String lat, String lon, String? type, NominatimAddressDto? address
});


$NominatimAddressDtoCopyWith<$Res>? get address;

}
/// @nodoc
class _$NominatimPlaceDtoCopyWithImpl<$Res>
    implements $NominatimPlaceDtoCopyWith<$Res> {
  _$NominatimPlaceDtoCopyWithImpl(this._self, this._then);

  final NominatimPlaceDto _self;
  final $Res Function(NominatimPlaceDto) _then;

/// Create a copy of NominatimPlaceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? displayName = null,Object? lat = null,Object? lon = null,Object? type = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as NominatimAddressDto?,
  ));
}
/// Create a copy of NominatimPlaceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NominatimAddressDtoCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $NominatimAddressDtoCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [NominatimPlaceDto].
extension NominatimPlaceDtoPatterns on NominatimPlaceDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NominatimPlaceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NominatimPlaceDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NominatimPlaceDto value)  $default,){
final _that = this;
switch (_that) {
case _NominatimPlaceDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NominatimPlaceDto value)?  $default,){
final _that = this;
switch (_that) {
case _NominatimPlaceDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'display_name')  String displayName,  String lat,  String lon,  String? type,  NominatimAddressDto? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NominatimPlaceDto() when $default != null:
return $default(_that.displayName,_that.lat,_that.lon,_that.type,_that.address);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'display_name')  String displayName,  String lat,  String lon,  String? type,  NominatimAddressDto? address)  $default,) {final _that = this;
switch (_that) {
case _NominatimPlaceDto():
return $default(_that.displayName,_that.lat,_that.lon,_that.type,_that.address);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'display_name')  String displayName,  String lat,  String lon,  String? type,  NominatimAddressDto? address)?  $default,) {final _that = this;
switch (_that) {
case _NominatimPlaceDto() when $default != null:
return $default(_that.displayName,_that.lat,_that.lon,_that.type,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NominatimPlaceDto implements NominatimPlaceDto {
  const _NominatimPlaceDto({@JsonKey(name: 'display_name') required this.displayName, required this.lat, required this.lon, this.type, this.address});
  factory _NominatimPlaceDto.fromJson(Map<String, dynamic> json) => _$NominatimPlaceDtoFromJson(json);

@override@JsonKey(name: 'display_name') final  String displayName;
@override final  String lat;
@override final  String lon;
@override final  String? type;
@override final  NominatimAddressDto? address;

/// Create a copy of NominatimPlaceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NominatimPlaceDtoCopyWith<_NominatimPlaceDto> get copyWith => __$NominatimPlaceDtoCopyWithImpl<_NominatimPlaceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NominatimPlaceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NominatimPlaceDto&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.type, type) || other.type == type)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,displayName,lat,lon,type,address);

@override
String toString() {
  return 'NominatimPlaceDto(displayName: $displayName, lat: $lat, lon: $lon, type: $type, address: $address)';
}


}

/// @nodoc
abstract mixin class _$NominatimPlaceDtoCopyWith<$Res> implements $NominatimPlaceDtoCopyWith<$Res> {
  factory _$NominatimPlaceDtoCopyWith(_NominatimPlaceDto value, $Res Function(_NominatimPlaceDto) _then) = __$NominatimPlaceDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'display_name') String displayName, String lat, String lon, String? type, NominatimAddressDto? address
});


@override $NominatimAddressDtoCopyWith<$Res>? get address;

}
/// @nodoc
class __$NominatimPlaceDtoCopyWithImpl<$Res>
    implements _$NominatimPlaceDtoCopyWith<$Res> {
  __$NominatimPlaceDtoCopyWithImpl(this._self, this._then);

  final _NominatimPlaceDto _self;
  final $Res Function(_NominatimPlaceDto) _then;

/// Create a copy of NominatimPlaceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? lat = null,Object? lon = null,Object? type = freezed,Object? address = freezed,}) {
  return _then(_NominatimPlaceDto(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as NominatimAddressDto?,
  ));
}

/// Create a copy of NominatimPlaceDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NominatimAddressDtoCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $NominatimAddressDtoCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
