// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nominatim_address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NominatimAddressDto {

 String? get city; String? get town; String? get village; String? get suburb; String? get state; String? get country;
/// Create a copy of NominatimAddressDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NominatimAddressDtoCopyWith<NominatimAddressDto> get copyWith => _$NominatimAddressDtoCopyWithImpl<NominatimAddressDto>(this as NominatimAddressDto, _$identity);

  /// Serializes this NominatimAddressDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NominatimAddressDto&&(identical(other.city, city) || other.city == city)&&(identical(other.town, town) || other.town == town)&&(identical(other.village, village) || other.village == village)&&(identical(other.suburb, suburb) || other.suburb == suburb)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,town,village,suburb,state,country);

@override
String toString() {
  return 'NominatimAddressDto(city: $city, town: $town, village: $village, suburb: $suburb, state: $state, country: $country)';
}


}

/// @nodoc
abstract mixin class $NominatimAddressDtoCopyWith<$Res>  {
  factory $NominatimAddressDtoCopyWith(NominatimAddressDto value, $Res Function(NominatimAddressDto) _then) = _$NominatimAddressDtoCopyWithImpl;
@useResult
$Res call({
 String? city, String? town, String? village, String? suburb, String? state, String? country
});




}
/// @nodoc
class _$NominatimAddressDtoCopyWithImpl<$Res>
    implements $NominatimAddressDtoCopyWith<$Res> {
  _$NominatimAddressDtoCopyWithImpl(this._self, this._then);

  final NominatimAddressDto _self;
  final $Res Function(NominatimAddressDto) _then;

/// Create a copy of NominatimAddressDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = freezed,Object? town = freezed,Object? village = freezed,Object? suburb = freezed,Object? state = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,town: freezed == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String?,village: freezed == village ? _self.village : village // ignore: cast_nullable_to_non_nullable
as String?,suburb: freezed == suburb ? _self.suburb : suburb // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NominatimAddressDto].
extension NominatimAddressDtoPatterns on NominatimAddressDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NominatimAddressDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NominatimAddressDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NominatimAddressDto value)  $default,){
final _that = this;
switch (_that) {
case _NominatimAddressDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NominatimAddressDto value)?  $default,){
final _that = this;
switch (_that) {
case _NominatimAddressDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? city,  String? town,  String? village,  String? suburb,  String? state,  String? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NominatimAddressDto() when $default != null:
return $default(_that.city,_that.town,_that.village,_that.suburb,_that.state,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? city,  String? town,  String? village,  String? suburb,  String? state,  String? country)  $default,) {final _that = this;
switch (_that) {
case _NominatimAddressDto():
return $default(_that.city,_that.town,_that.village,_that.suburb,_that.state,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? city,  String? town,  String? village,  String? suburb,  String? state,  String? country)?  $default,) {final _that = this;
switch (_that) {
case _NominatimAddressDto() when $default != null:
return $default(_that.city,_that.town,_that.village,_that.suburb,_that.state,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NominatimAddressDto implements NominatimAddressDto {
  const _NominatimAddressDto({this.city, this.town, this.village, this.suburb, this.state, this.country});
  factory _NominatimAddressDto.fromJson(Map<String, dynamic> json) => _$NominatimAddressDtoFromJson(json);

@override final  String? city;
@override final  String? town;
@override final  String? village;
@override final  String? suburb;
@override final  String? state;
@override final  String? country;

/// Create a copy of NominatimAddressDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NominatimAddressDtoCopyWith<_NominatimAddressDto> get copyWith => __$NominatimAddressDtoCopyWithImpl<_NominatimAddressDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NominatimAddressDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NominatimAddressDto&&(identical(other.city, city) || other.city == city)&&(identical(other.town, town) || other.town == town)&&(identical(other.village, village) || other.village == village)&&(identical(other.suburb, suburb) || other.suburb == suburb)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,town,village,suburb,state,country);

@override
String toString() {
  return 'NominatimAddressDto(city: $city, town: $town, village: $village, suburb: $suburb, state: $state, country: $country)';
}


}

/// @nodoc
abstract mixin class _$NominatimAddressDtoCopyWith<$Res> implements $NominatimAddressDtoCopyWith<$Res> {
  factory _$NominatimAddressDtoCopyWith(_NominatimAddressDto value, $Res Function(_NominatimAddressDto) _then) = __$NominatimAddressDtoCopyWithImpl;
@override @useResult
$Res call({
 String? city, String? town, String? village, String? suburb, String? state, String? country
});




}
/// @nodoc
class __$NominatimAddressDtoCopyWithImpl<$Res>
    implements _$NominatimAddressDtoCopyWith<$Res> {
  __$NominatimAddressDtoCopyWithImpl(this._self, this._then);

  final _NominatimAddressDto _self;
  final $Res Function(_NominatimAddressDto) _then;

/// Create a copy of NominatimAddressDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = freezed,Object? town = freezed,Object? village = freezed,Object? suburb = freezed,Object? state = freezed,Object? country = freezed,}) {
  return _then(_NominatimAddressDto(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,town: freezed == town ? _self.town : town // ignore: cast_nullable_to_non_nullable
as String?,village: freezed == village ? _self.village : village // ignore: cast_nullable_to_non_nullable
as String?,suburb: freezed == suburb ? _self.suburb : suburb // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
