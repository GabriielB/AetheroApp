// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherDto {

 CurrentWeatherDto get current; HourlyDto get hourly; DailyDto get daily;
/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDtoCopyWith<WeatherDto> get copyWith => _$WeatherDtoCopyWithImpl<WeatherDto>(this as WeatherDto, _$identity);

  /// Serializes this WeatherDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDto&&(identical(other.current, current) || other.current == current)&&(identical(other.hourly, hourly) || other.hourly == hourly)&&(identical(other.daily, daily) || other.daily == daily));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,hourly,daily);

@override
String toString() {
  return 'WeatherDto(current: $current, hourly: $hourly, daily: $daily)';
}


}

/// @nodoc
abstract mixin class $WeatherDtoCopyWith<$Res>  {
  factory $WeatherDtoCopyWith(WeatherDto value, $Res Function(WeatherDto) _then) = _$WeatherDtoCopyWithImpl;
@useResult
$Res call({
 CurrentWeatherDto current, HourlyDto hourly, DailyDto daily
});


$CurrentWeatherDtoCopyWith<$Res> get current;$HourlyDtoCopyWith<$Res> get hourly;$DailyDtoCopyWith<$Res> get daily;

}
/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._self, this._then);

  final WeatherDto _self;
  final $Res Function(WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,Object? hourly = null,Object? daily = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as CurrentWeatherDto,hourly: null == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as HourlyDto,daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as DailyDto,
  ));
}
/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWeatherDtoCopyWith<$Res> get current {
  
  return $CurrentWeatherDtoCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HourlyDtoCopyWith<$Res> get hourly {
  
  return $HourlyDtoCopyWith<$Res>(_self.hourly, (value) {
    return _then(_self.copyWith(hourly: value));
  });
}/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyDtoCopyWith<$Res> get daily {
  
  return $DailyDtoCopyWith<$Res>(_self.daily, (value) {
    return _then(_self.copyWith(daily: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherDto].
extension WeatherDtoPatterns on WeatherDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherDto value)  $default,){
final _that = this;
switch (_that) {
case _WeatherDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherDto value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CurrentWeatherDto current,  HourlyDto hourly,  DailyDto daily)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.current,_that.hourly,_that.daily);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CurrentWeatherDto current,  HourlyDto hourly,  DailyDto daily)  $default,) {final _that = this;
switch (_that) {
case _WeatherDto():
return $default(_that.current,_that.hourly,_that.daily);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CurrentWeatherDto current,  HourlyDto hourly,  DailyDto daily)?  $default,) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.current,_that.hourly,_that.daily);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherDto implements WeatherDto {
  const _WeatherDto({required this.current, required this.hourly, required this.daily});
  factory _WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);

@override final  CurrentWeatherDto current;
@override final  HourlyDto hourly;
@override final  DailyDto daily;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDtoCopyWith<_WeatherDto> get copyWith => __$WeatherDtoCopyWithImpl<_WeatherDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDto&&(identical(other.current, current) || other.current == current)&&(identical(other.hourly, hourly) || other.hourly == hourly)&&(identical(other.daily, daily) || other.daily == daily));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current,hourly,daily);

@override
String toString() {
  return 'WeatherDto(current: $current, hourly: $hourly, daily: $daily)';
}


}

/// @nodoc
abstract mixin class _$WeatherDtoCopyWith<$Res> implements $WeatherDtoCopyWith<$Res> {
  factory _$WeatherDtoCopyWith(_WeatherDto value, $Res Function(_WeatherDto) _then) = __$WeatherDtoCopyWithImpl;
@override @useResult
$Res call({
 CurrentWeatherDto current, HourlyDto hourly, DailyDto daily
});


@override $CurrentWeatherDtoCopyWith<$Res> get current;@override $HourlyDtoCopyWith<$Res> get hourly;@override $DailyDtoCopyWith<$Res> get daily;

}
/// @nodoc
class __$WeatherDtoCopyWithImpl<$Res>
    implements _$WeatherDtoCopyWith<$Res> {
  __$WeatherDtoCopyWithImpl(this._self, this._then);

  final _WeatherDto _self;
  final $Res Function(_WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,Object? hourly = null,Object? daily = null,}) {
  return _then(_WeatherDto(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as CurrentWeatherDto,hourly: null == hourly ? _self.hourly : hourly // ignore: cast_nullable_to_non_nullable
as HourlyDto,daily: null == daily ? _self.daily : daily // ignore: cast_nullable_to_non_nullable
as DailyDto,
  ));
}

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWeatherDtoCopyWith<$Res> get current {
  
  return $CurrentWeatherDtoCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HourlyDtoCopyWith<$Res> get hourly {
  
  return $HourlyDtoCopyWith<$Res>(_self.hourly, (value) {
    return _then(_self.copyWith(hourly: value));
  });
}/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DailyDtoCopyWith<$Res> get daily {
  
  return $DailyDtoCopyWith<$Res>(_self.daily, (value) {
    return _then(_self.copyWith(daily: value));
  });
}
}


/// @nodoc
mixin _$CurrentWeatherDto {

@JsonKey(name: 'temperature_2m') double get temperature2m;@JsonKey(name: 'apparent_temperature') double get apparentTemperature;@JsonKey(name: 'relative_humidity_2m') double get relativeHumidity2m;@JsonKey(name: 'is_day') int get isDay;@JsonKey(name: 'weather_code') int get weatherCode;@JsonKey(name: 'wind_speed_10m') double get windSpeed10m;
/// Create a copy of CurrentWeatherDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWeatherDtoCopyWith<CurrentWeatherDto> get copyWith => _$CurrentWeatherDtoCopyWithImpl<CurrentWeatherDto>(this as CurrentWeatherDto, _$identity);

  /// Serializes this CurrentWeatherDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWeatherDto&&(identical(other.temperature2m, temperature2m) || other.temperature2m == temperature2m)&&(identical(other.apparentTemperature, apparentTemperature) || other.apparentTemperature == apparentTemperature)&&(identical(other.relativeHumidity2m, relativeHumidity2m) || other.relativeHumidity2m == relativeHumidity2m)&&(identical(other.isDay, isDay) || other.isDay == isDay)&&(identical(other.weatherCode, weatherCode) || other.weatherCode == weatherCode)&&(identical(other.windSpeed10m, windSpeed10m) || other.windSpeed10m == windSpeed10m));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature2m,apparentTemperature,relativeHumidity2m,isDay,weatherCode,windSpeed10m);

@override
String toString() {
  return 'CurrentWeatherDto(temperature2m: $temperature2m, apparentTemperature: $apparentTemperature, relativeHumidity2m: $relativeHumidity2m, isDay: $isDay, weatherCode: $weatherCode, windSpeed10m: $windSpeed10m)';
}


}

/// @nodoc
abstract mixin class $CurrentWeatherDtoCopyWith<$Res>  {
  factory $CurrentWeatherDtoCopyWith(CurrentWeatherDto value, $Res Function(CurrentWeatherDto) _then) = _$CurrentWeatherDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'temperature_2m') double temperature2m,@JsonKey(name: 'apparent_temperature') double apparentTemperature,@JsonKey(name: 'relative_humidity_2m') double relativeHumidity2m,@JsonKey(name: 'is_day') int isDay,@JsonKey(name: 'weather_code') int weatherCode,@JsonKey(name: 'wind_speed_10m') double windSpeed10m
});




}
/// @nodoc
class _$CurrentWeatherDtoCopyWithImpl<$Res>
    implements $CurrentWeatherDtoCopyWith<$Res> {
  _$CurrentWeatherDtoCopyWithImpl(this._self, this._then);

  final CurrentWeatherDto _self;
  final $Res Function(CurrentWeatherDto) _then;

/// Create a copy of CurrentWeatherDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature2m = null,Object? apparentTemperature = null,Object? relativeHumidity2m = null,Object? isDay = null,Object? weatherCode = null,Object? windSpeed10m = null,}) {
  return _then(_self.copyWith(
temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as double,apparentTemperature: null == apparentTemperature ? _self.apparentTemperature : apparentTemperature // ignore: cast_nullable_to_non_nullable
as double,relativeHumidity2m: null == relativeHumidity2m ? _self.relativeHumidity2m : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
as double,isDay: null == isDay ? _self.isDay : isDay // ignore: cast_nullable_to_non_nullable
as int,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as int,windSpeed10m: null == windSpeed10m ? _self.windSpeed10m : windSpeed10m // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentWeatherDto].
extension CurrentWeatherDtoPatterns on CurrentWeatherDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentWeatherDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentWeatherDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentWeatherDto value)  $default,){
final _that = this;
switch (_that) {
case _CurrentWeatherDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentWeatherDto value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentWeatherDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'temperature_2m')  double temperature2m, @JsonKey(name: 'apparent_temperature')  double apparentTemperature, @JsonKey(name: 'relative_humidity_2m')  double relativeHumidity2m, @JsonKey(name: 'is_day')  int isDay, @JsonKey(name: 'weather_code')  int weatherCode, @JsonKey(name: 'wind_speed_10m')  double windSpeed10m)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentWeatherDto() when $default != null:
return $default(_that.temperature2m,_that.apparentTemperature,_that.relativeHumidity2m,_that.isDay,_that.weatherCode,_that.windSpeed10m);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'temperature_2m')  double temperature2m, @JsonKey(name: 'apparent_temperature')  double apparentTemperature, @JsonKey(name: 'relative_humidity_2m')  double relativeHumidity2m, @JsonKey(name: 'is_day')  int isDay, @JsonKey(name: 'weather_code')  int weatherCode, @JsonKey(name: 'wind_speed_10m')  double windSpeed10m)  $default,) {final _that = this;
switch (_that) {
case _CurrentWeatherDto():
return $default(_that.temperature2m,_that.apparentTemperature,_that.relativeHumidity2m,_that.isDay,_that.weatherCode,_that.windSpeed10m);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'temperature_2m')  double temperature2m, @JsonKey(name: 'apparent_temperature')  double apparentTemperature, @JsonKey(name: 'relative_humidity_2m')  double relativeHumidity2m, @JsonKey(name: 'is_day')  int isDay, @JsonKey(name: 'weather_code')  int weatherCode, @JsonKey(name: 'wind_speed_10m')  double windSpeed10m)?  $default,) {final _that = this;
switch (_that) {
case _CurrentWeatherDto() when $default != null:
return $default(_that.temperature2m,_that.apparentTemperature,_that.relativeHumidity2m,_that.isDay,_that.weatherCode,_that.windSpeed10m);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrentWeatherDto implements CurrentWeatherDto {
  const _CurrentWeatherDto({@JsonKey(name: 'temperature_2m') required this.temperature2m, @JsonKey(name: 'apparent_temperature') required this.apparentTemperature, @JsonKey(name: 'relative_humidity_2m') required this.relativeHumidity2m, @JsonKey(name: 'is_day') required this.isDay, @JsonKey(name: 'weather_code') required this.weatherCode, @JsonKey(name: 'wind_speed_10m') required this.windSpeed10m});
  factory _CurrentWeatherDto.fromJson(Map<String, dynamic> json) => _$CurrentWeatherDtoFromJson(json);

@override@JsonKey(name: 'temperature_2m') final  double temperature2m;
@override@JsonKey(name: 'apparent_temperature') final  double apparentTemperature;
@override@JsonKey(name: 'relative_humidity_2m') final  double relativeHumidity2m;
@override@JsonKey(name: 'is_day') final  int isDay;
@override@JsonKey(name: 'weather_code') final  int weatherCode;
@override@JsonKey(name: 'wind_speed_10m') final  double windSpeed10m;

/// Create a copy of CurrentWeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentWeatherDtoCopyWith<_CurrentWeatherDto> get copyWith => __$CurrentWeatherDtoCopyWithImpl<_CurrentWeatherDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentWeatherDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWeatherDto&&(identical(other.temperature2m, temperature2m) || other.temperature2m == temperature2m)&&(identical(other.apparentTemperature, apparentTemperature) || other.apparentTemperature == apparentTemperature)&&(identical(other.relativeHumidity2m, relativeHumidity2m) || other.relativeHumidity2m == relativeHumidity2m)&&(identical(other.isDay, isDay) || other.isDay == isDay)&&(identical(other.weatherCode, weatherCode) || other.weatherCode == weatherCode)&&(identical(other.windSpeed10m, windSpeed10m) || other.windSpeed10m == windSpeed10m));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature2m,apparentTemperature,relativeHumidity2m,isDay,weatherCode,windSpeed10m);

@override
String toString() {
  return 'CurrentWeatherDto(temperature2m: $temperature2m, apparentTemperature: $apparentTemperature, relativeHumidity2m: $relativeHumidity2m, isDay: $isDay, weatherCode: $weatherCode, windSpeed10m: $windSpeed10m)';
}


}

/// @nodoc
abstract mixin class _$CurrentWeatherDtoCopyWith<$Res> implements $CurrentWeatherDtoCopyWith<$Res> {
  factory _$CurrentWeatherDtoCopyWith(_CurrentWeatherDto value, $Res Function(_CurrentWeatherDto) _then) = __$CurrentWeatherDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'temperature_2m') double temperature2m,@JsonKey(name: 'apparent_temperature') double apparentTemperature,@JsonKey(name: 'relative_humidity_2m') double relativeHumidity2m,@JsonKey(name: 'is_day') int isDay,@JsonKey(name: 'weather_code') int weatherCode,@JsonKey(name: 'wind_speed_10m') double windSpeed10m
});




}
/// @nodoc
class __$CurrentWeatherDtoCopyWithImpl<$Res>
    implements _$CurrentWeatherDtoCopyWith<$Res> {
  __$CurrentWeatherDtoCopyWithImpl(this._self, this._then);

  final _CurrentWeatherDto _self;
  final $Res Function(_CurrentWeatherDto) _then;

/// Create a copy of CurrentWeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature2m = null,Object? apparentTemperature = null,Object? relativeHumidity2m = null,Object? isDay = null,Object? weatherCode = null,Object? windSpeed10m = null,}) {
  return _then(_CurrentWeatherDto(
temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as double,apparentTemperature: null == apparentTemperature ? _self.apparentTemperature : apparentTemperature // ignore: cast_nullable_to_non_nullable
as double,relativeHumidity2m: null == relativeHumidity2m ? _self.relativeHumidity2m : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
as double,isDay: null == isDay ? _self.isDay : isDay // ignore: cast_nullable_to_non_nullable
as int,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as int,windSpeed10m: null == windSpeed10m ? _self.windSpeed10m : windSpeed10m // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$HourlyDto {

 List<String> get time;@JsonKey(name: 'temperature_2m') List<num> get temperature2m;@JsonKey(name: 'apparent_temperature') List<num> get apparentTemperature;@JsonKey(name: 'relative_humidity_2m') List<num> get relativeHumidity2m;@JsonKey(name: 'wind_speed_10m') List<num> get windSpeed10m; List<num> get precipitation;@JsonKey(name: 'precipitation_probability') List<num> get precipitationProbability;@JsonKey(name: 'uv_index') List<num> get uvIndex;
/// Create a copy of HourlyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyDtoCopyWith<HourlyDto> get copyWith => _$HourlyDtoCopyWithImpl<HourlyDto>(this as HourlyDto, _$identity);

  /// Serializes this HourlyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyDto&&const DeepCollectionEquality().equals(other.time, time)&&const DeepCollectionEquality().equals(other.temperature2m, temperature2m)&&const DeepCollectionEquality().equals(other.apparentTemperature, apparentTemperature)&&const DeepCollectionEquality().equals(other.relativeHumidity2m, relativeHumidity2m)&&const DeepCollectionEquality().equals(other.windSpeed10m, windSpeed10m)&&const DeepCollectionEquality().equals(other.precipitation, precipitation)&&const DeepCollectionEquality().equals(other.precipitationProbability, precipitationProbability)&&const DeepCollectionEquality().equals(other.uvIndex, uvIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(time),const DeepCollectionEquality().hash(temperature2m),const DeepCollectionEquality().hash(apparentTemperature),const DeepCollectionEquality().hash(relativeHumidity2m),const DeepCollectionEquality().hash(windSpeed10m),const DeepCollectionEquality().hash(precipitation),const DeepCollectionEquality().hash(precipitationProbability),const DeepCollectionEquality().hash(uvIndex));

@override
String toString() {
  return 'HourlyDto(time: $time, temperature2m: $temperature2m, apparentTemperature: $apparentTemperature, relativeHumidity2m: $relativeHumidity2m, windSpeed10m: $windSpeed10m, precipitation: $precipitation, precipitationProbability: $precipitationProbability, uvIndex: $uvIndex)';
}


}

/// @nodoc
abstract mixin class $HourlyDtoCopyWith<$Res>  {
  factory $HourlyDtoCopyWith(HourlyDto value, $Res Function(HourlyDto) _then) = _$HourlyDtoCopyWithImpl;
@useResult
$Res call({
 List<String> time,@JsonKey(name: 'temperature_2m') List<num> temperature2m,@JsonKey(name: 'apparent_temperature') List<num> apparentTemperature,@JsonKey(name: 'relative_humidity_2m') List<num> relativeHumidity2m,@JsonKey(name: 'wind_speed_10m') List<num> windSpeed10m, List<num> precipitation,@JsonKey(name: 'precipitation_probability') List<num> precipitationProbability,@JsonKey(name: 'uv_index') List<num> uvIndex
});




}
/// @nodoc
class _$HourlyDtoCopyWithImpl<$Res>
    implements $HourlyDtoCopyWith<$Res> {
  _$HourlyDtoCopyWithImpl(this._self, this._then);

  final HourlyDto _self;
  final $Res Function(HourlyDto) _then;

/// Create a copy of HourlyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? temperature2m = null,Object? apparentTemperature = null,Object? relativeHumidity2m = null,Object? windSpeed10m = null,Object? precipitation = null,Object? precipitationProbability = null,Object? uvIndex = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as List<String>,temperature2m: null == temperature2m ? _self.temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as List<num>,apparentTemperature: null == apparentTemperature ? _self.apparentTemperature : apparentTemperature // ignore: cast_nullable_to_non_nullable
as List<num>,relativeHumidity2m: null == relativeHumidity2m ? _self.relativeHumidity2m : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
as List<num>,windSpeed10m: null == windSpeed10m ? _self.windSpeed10m : windSpeed10m // ignore: cast_nullable_to_non_nullable
as List<num>,precipitation: null == precipitation ? _self.precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as List<num>,precipitationProbability: null == precipitationProbability ? _self.precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as List<num>,uvIndex: null == uvIndex ? _self.uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as List<num>,
  ));
}

}


/// Adds pattern-matching-related methods to [HourlyDto].
extension HourlyDtoPatterns on HourlyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HourlyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HourlyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HourlyDto value)  $default,){
final _that = this;
switch (_that) {
case _HourlyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HourlyDto value)?  $default,){
final _that = this;
switch (_that) {
case _HourlyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> time, @JsonKey(name: 'temperature_2m')  List<num> temperature2m, @JsonKey(name: 'apparent_temperature')  List<num> apparentTemperature, @JsonKey(name: 'relative_humidity_2m')  List<num> relativeHumidity2m, @JsonKey(name: 'wind_speed_10m')  List<num> windSpeed10m,  List<num> precipitation, @JsonKey(name: 'precipitation_probability')  List<num> precipitationProbability, @JsonKey(name: 'uv_index')  List<num> uvIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HourlyDto() when $default != null:
return $default(_that.time,_that.temperature2m,_that.apparentTemperature,_that.relativeHumidity2m,_that.windSpeed10m,_that.precipitation,_that.precipitationProbability,_that.uvIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> time, @JsonKey(name: 'temperature_2m')  List<num> temperature2m, @JsonKey(name: 'apparent_temperature')  List<num> apparentTemperature, @JsonKey(name: 'relative_humidity_2m')  List<num> relativeHumidity2m, @JsonKey(name: 'wind_speed_10m')  List<num> windSpeed10m,  List<num> precipitation, @JsonKey(name: 'precipitation_probability')  List<num> precipitationProbability, @JsonKey(name: 'uv_index')  List<num> uvIndex)  $default,) {final _that = this;
switch (_that) {
case _HourlyDto():
return $default(_that.time,_that.temperature2m,_that.apparentTemperature,_that.relativeHumidity2m,_that.windSpeed10m,_that.precipitation,_that.precipitationProbability,_that.uvIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> time, @JsonKey(name: 'temperature_2m')  List<num> temperature2m, @JsonKey(name: 'apparent_temperature')  List<num> apparentTemperature, @JsonKey(name: 'relative_humidity_2m')  List<num> relativeHumidity2m, @JsonKey(name: 'wind_speed_10m')  List<num> windSpeed10m,  List<num> precipitation, @JsonKey(name: 'precipitation_probability')  List<num> precipitationProbability, @JsonKey(name: 'uv_index')  List<num> uvIndex)?  $default,) {final _that = this;
switch (_that) {
case _HourlyDto() when $default != null:
return $default(_that.time,_that.temperature2m,_that.apparentTemperature,_that.relativeHumidity2m,_that.windSpeed10m,_that.precipitation,_that.precipitationProbability,_that.uvIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HourlyDto implements HourlyDto {
  const _HourlyDto({required final  List<String> time, @JsonKey(name: 'temperature_2m') required final  List<num> temperature2m, @JsonKey(name: 'apparent_temperature') required final  List<num> apparentTemperature, @JsonKey(name: 'relative_humidity_2m') required final  List<num> relativeHumidity2m, @JsonKey(name: 'wind_speed_10m') required final  List<num> windSpeed10m, required final  List<num> precipitation, @JsonKey(name: 'precipitation_probability') required final  List<num> precipitationProbability, @JsonKey(name: 'uv_index') required final  List<num> uvIndex}): _time = time,_temperature2m = temperature2m,_apparentTemperature = apparentTemperature,_relativeHumidity2m = relativeHumidity2m,_windSpeed10m = windSpeed10m,_precipitation = precipitation,_precipitationProbability = precipitationProbability,_uvIndex = uvIndex;
  factory _HourlyDto.fromJson(Map<String, dynamic> json) => _$HourlyDtoFromJson(json);

 final  List<String> _time;
@override List<String> get time {
  if (_time is EqualUnmodifiableListView) return _time;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_time);
}

 final  List<num> _temperature2m;
@override@JsonKey(name: 'temperature_2m') List<num> get temperature2m {
  if (_temperature2m is EqualUnmodifiableListView) return _temperature2m;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2m);
}

 final  List<num> _apparentTemperature;
@override@JsonKey(name: 'apparent_temperature') List<num> get apparentTemperature {
  if (_apparentTemperature is EqualUnmodifiableListView) return _apparentTemperature;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_apparentTemperature);
}

 final  List<num> _relativeHumidity2m;
@override@JsonKey(name: 'relative_humidity_2m') List<num> get relativeHumidity2m {
  if (_relativeHumidity2m is EqualUnmodifiableListView) return _relativeHumidity2m;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relativeHumidity2m);
}

 final  List<num> _windSpeed10m;
@override@JsonKey(name: 'wind_speed_10m') List<num> get windSpeed10m {
  if (_windSpeed10m is EqualUnmodifiableListView) return _windSpeed10m;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_windSpeed10m);
}

 final  List<num> _precipitation;
@override List<num> get precipitation {
  if (_precipitation is EqualUnmodifiableListView) return _precipitation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_precipitation);
}

 final  List<num> _precipitationProbability;
@override@JsonKey(name: 'precipitation_probability') List<num> get precipitationProbability {
  if (_precipitationProbability is EqualUnmodifiableListView) return _precipitationProbability;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_precipitationProbability);
}

 final  List<num> _uvIndex;
@override@JsonKey(name: 'uv_index') List<num> get uvIndex {
  if (_uvIndex is EqualUnmodifiableListView) return _uvIndex;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_uvIndex);
}


/// Create a copy of HourlyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyDtoCopyWith<_HourlyDto> get copyWith => __$HourlyDtoCopyWithImpl<_HourlyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HourlyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyDto&&const DeepCollectionEquality().equals(other._time, _time)&&const DeepCollectionEquality().equals(other._temperature2m, _temperature2m)&&const DeepCollectionEquality().equals(other._apparentTemperature, _apparentTemperature)&&const DeepCollectionEquality().equals(other._relativeHumidity2m, _relativeHumidity2m)&&const DeepCollectionEquality().equals(other._windSpeed10m, _windSpeed10m)&&const DeepCollectionEquality().equals(other._precipitation, _precipitation)&&const DeepCollectionEquality().equals(other._precipitationProbability, _precipitationProbability)&&const DeepCollectionEquality().equals(other._uvIndex, _uvIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_time),const DeepCollectionEquality().hash(_temperature2m),const DeepCollectionEquality().hash(_apparentTemperature),const DeepCollectionEquality().hash(_relativeHumidity2m),const DeepCollectionEquality().hash(_windSpeed10m),const DeepCollectionEquality().hash(_precipitation),const DeepCollectionEquality().hash(_precipitationProbability),const DeepCollectionEquality().hash(_uvIndex));

@override
String toString() {
  return 'HourlyDto(time: $time, temperature2m: $temperature2m, apparentTemperature: $apparentTemperature, relativeHumidity2m: $relativeHumidity2m, windSpeed10m: $windSpeed10m, precipitation: $precipitation, precipitationProbability: $precipitationProbability, uvIndex: $uvIndex)';
}


}

/// @nodoc
abstract mixin class _$HourlyDtoCopyWith<$Res> implements $HourlyDtoCopyWith<$Res> {
  factory _$HourlyDtoCopyWith(_HourlyDto value, $Res Function(_HourlyDto) _then) = __$HourlyDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> time,@JsonKey(name: 'temperature_2m') List<num> temperature2m,@JsonKey(name: 'apparent_temperature') List<num> apparentTemperature,@JsonKey(name: 'relative_humidity_2m') List<num> relativeHumidity2m,@JsonKey(name: 'wind_speed_10m') List<num> windSpeed10m, List<num> precipitation,@JsonKey(name: 'precipitation_probability') List<num> precipitationProbability,@JsonKey(name: 'uv_index') List<num> uvIndex
});




}
/// @nodoc
class __$HourlyDtoCopyWithImpl<$Res>
    implements _$HourlyDtoCopyWith<$Res> {
  __$HourlyDtoCopyWithImpl(this._self, this._then);

  final _HourlyDto _self;
  final $Res Function(_HourlyDto) _then;

/// Create a copy of HourlyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? temperature2m = null,Object? apparentTemperature = null,Object? relativeHumidity2m = null,Object? windSpeed10m = null,Object? precipitation = null,Object? precipitationProbability = null,Object? uvIndex = null,}) {
  return _then(_HourlyDto(
time: null == time ? _self._time : time // ignore: cast_nullable_to_non_nullable
as List<String>,temperature2m: null == temperature2m ? _self._temperature2m : temperature2m // ignore: cast_nullable_to_non_nullable
as List<num>,apparentTemperature: null == apparentTemperature ? _self._apparentTemperature : apparentTemperature // ignore: cast_nullable_to_non_nullable
as List<num>,relativeHumidity2m: null == relativeHumidity2m ? _self._relativeHumidity2m : relativeHumidity2m // ignore: cast_nullable_to_non_nullable
as List<num>,windSpeed10m: null == windSpeed10m ? _self._windSpeed10m : windSpeed10m // ignore: cast_nullable_to_non_nullable
as List<num>,precipitation: null == precipitation ? _self._precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as List<num>,precipitationProbability: null == precipitationProbability ? _self._precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as List<num>,uvIndex: null == uvIndex ? _self._uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as List<num>,
  ));
}


}


/// @nodoc
mixin _$DailyDto {

 List<String> get time;@JsonKey(name: 'temperature_2m_max') List<num> get temperature2mMax;@JsonKey(name: 'temperature_2m_min') List<num> get temperature2mMin; List<String> get sunrise; List<String> get sunset;
/// Create a copy of DailyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyDtoCopyWith<DailyDto> get copyWith => _$DailyDtoCopyWithImpl<DailyDto>(this as DailyDto, _$identity);

  /// Serializes this DailyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyDto&&const DeepCollectionEquality().equals(other.time, time)&&const DeepCollectionEquality().equals(other.temperature2mMax, temperature2mMax)&&const DeepCollectionEquality().equals(other.temperature2mMin, temperature2mMin)&&const DeepCollectionEquality().equals(other.sunrise, sunrise)&&const DeepCollectionEquality().equals(other.sunset, sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(time),const DeepCollectionEquality().hash(temperature2mMax),const DeepCollectionEquality().hash(temperature2mMin),const DeepCollectionEquality().hash(sunrise),const DeepCollectionEquality().hash(sunset));

@override
String toString() {
  return 'DailyDto(time: $time, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class $DailyDtoCopyWith<$Res>  {
  factory $DailyDtoCopyWith(DailyDto value, $Res Function(DailyDto) _then) = _$DailyDtoCopyWithImpl;
@useResult
$Res call({
 List<String> time,@JsonKey(name: 'temperature_2m_max') List<num> temperature2mMax,@JsonKey(name: 'temperature_2m_min') List<num> temperature2mMin, List<String> sunrise, List<String> sunset
});




}
/// @nodoc
class _$DailyDtoCopyWithImpl<$Res>
    implements $DailyDtoCopyWith<$Res> {
  _$DailyDtoCopyWithImpl(this._self, this._then);

  final DailyDto _self;
  final $Res Function(DailyDto) _then;

/// Create a copy of DailyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? temperature2mMax = null,Object? temperature2mMin = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as List<String>,temperature2mMax: null == temperature2mMax ? _self.temperature2mMax : temperature2mMax // ignore: cast_nullable_to_non_nullable
as List<num>,temperature2mMin: null == temperature2mMin ? _self.temperature2mMin : temperature2mMin // ignore: cast_nullable_to_non_nullable
as List<num>,sunrise: null == sunrise ? _self.sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as List<String>,sunset: null == sunset ? _self.sunset : sunset // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyDto].
extension DailyDtoPatterns on DailyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyDto value)  $default,){
final _that = this;
switch (_that) {
case _DailyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyDto value)?  $default,){
final _that = this;
switch (_that) {
case _DailyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> time, @JsonKey(name: 'temperature_2m_max')  List<num> temperature2mMax, @JsonKey(name: 'temperature_2m_min')  List<num> temperature2mMin,  List<String> sunrise,  List<String> sunset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyDto() when $default != null:
return $default(_that.time,_that.temperature2mMax,_that.temperature2mMin,_that.sunrise,_that.sunset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> time, @JsonKey(name: 'temperature_2m_max')  List<num> temperature2mMax, @JsonKey(name: 'temperature_2m_min')  List<num> temperature2mMin,  List<String> sunrise,  List<String> sunset)  $default,) {final _that = this;
switch (_that) {
case _DailyDto():
return $default(_that.time,_that.temperature2mMax,_that.temperature2mMin,_that.sunrise,_that.sunset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> time, @JsonKey(name: 'temperature_2m_max')  List<num> temperature2mMax, @JsonKey(name: 'temperature_2m_min')  List<num> temperature2mMin,  List<String> sunrise,  List<String> sunset)?  $default,) {final _that = this;
switch (_that) {
case _DailyDto() when $default != null:
return $default(_that.time,_that.temperature2mMax,_that.temperature2mMin,_that.sunrise,_that.sunset);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyDto implements DailyDto {
  const _DailyDto({required final  List<String> time, @JsonKey(name: 'temperature_2m_max') required final  List<num> temperature2mMax, @JsonKey(name: 'temperature_2m_min') required final  List<num> temperature2mMin, required final  List<String> sunrise, required final  List<String> sunset}): _time = time,_temperature2mMax = temperature2mMax,_temperature2mMin = temperature2mMin,_sunrise = sunrise,_sunset = sunset;
  factory _DailyDto.fromJson(Map<String, dynamic> json) => _$DailyDtoFromJson(json);

 final  List<String> _time;
@override List<String> get time {
  if (_time is EqualUnmodifiableListView) return _time;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_time);
}

 final  List<num> _temperature2mMax;
@override@JsonKey(name: 'temperature_2m_max') List<num> get temperature2mMax {
  if (_temperature2mMax is EqualUnmodifiableListView) return _temperature2mMax;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2mMax);
}

 final  List<num> _temperature2mMin;
@override@JsonKey(name: 'temperature_2m_min') List<num> get temperature2mMin {
  if (_temperature2mMin is EqualUnmodifiableListView) return _temperature2mMin;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperature2mMin);
}

 final  List<String> _sunrise;
@override List<String> get sunrise {
  if (_sunrise is EqualUnmodifiableListView) return _sunrise;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sunrise);
}

 final  List<String> _sunset;
@override List<String> get sunset {
  if (_sunset is EqualUnmodifiableListView) return _sunset;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sunset);
}


/// Create a copy of DailyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyDtoCopyWith<_DailyDto> get copyWith => __$DailyDtoCopyWithImpl<_DailyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyDto&&const DeepCollectionEquality().equals(other._time, _time)&&const DeepCollectionEquality().equals(other._temperature2mMax, _temperature2mMax)&&const DeepCollectionEquality().equals(other._temperature2mMin, _temperature2mMin)&&const DeepCollectionEquality().equals(other._sunrise, _sunrise)&&const DeepCollectionEquality().equals(other._sunset, _sunset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_time),const DeepCollectionEquality().hash(_temperature2mMax),const DeepCollectionEquality().hash(_temperature2mMin),const DeepCollectionEquality().hash(_sunrise),const DeepCollectionEquality().hash(_sunset));

@override
String toString() {
  return 'DailyDto(time: $time, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, sunrise: $sunrise, sunset: $sunset)';
}


}

/// @nodoc
abstract mixin class _$DailyDtoCopyWith<$Res> implements $DailyDtoCopyWith<$Res> {
  factory _$DailyDtoCopyWith(_DailyDto value, $Res Function(_DailyDto) _then) = __$DailyDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> time,@JsonKey(name: 'temperature_2m_max') List<num> temperature2mMax,@JsonKey(name: 'temperature_2m_min') List<num> temperature2mMin, List<String> sunrise, List<String> sunset
});




}
/// @nodoc
class __$DailyDtoCopyWithImpl<$Res>
    implements _$DailyDtoCopyWith<$Res> {
  __$DailyDtoCopyWithImpl(this._self, this._then);

  final _DailyDto _self;
  final $Res Function(_DailyDto) _then;

/// Create a copy of DailyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? temperature2mMax = null,Object? temperature2mMin = null,Object? sunrise = null,Object? sunset = null,}) {
  return _then(_DailyDto(
time: null == time ? _self._time : time // ignore: cast_nullable_to_non_nullable
as List<String>,temperature2mMax: null == temperature2mMax ? _self._temperature2mMax : temperature2mMax // ignore: cast_nullable_to_non_nullable
as List<num>,temperature2mMin: null == temperature2mMin ? _self._temperature2mMin : temperature2mMin // ignore: cast_nullable_to_non_nullable
as List<num>,sunrise: null == sunrise ? _self._sunrise : sunrise // ignore: cast_nullable_to_non_nullable
as List<String>,sunset: null == sunset ? _self._sunset : sunset // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
