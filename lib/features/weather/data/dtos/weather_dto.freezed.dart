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

@JsonKey(name: 'current_weather') CurrentWeatherDto get currentWeather;
/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDtoCopyWith<WeatherDto> get copyWith => _$WeatherDtoCopyWithImpl<WeatherDto>(this as WeatherDto, _$identity);

  /// Serializes this WeatherDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDto&&(identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentWeather);

@override
String toString() {
  return 'WeatherDto(currentWeather: $currentWeather)';
}


}

/// @nodoc
abstract mixin class $WeatherDtoCopyWith<$Res>  {
  factory $WeatherDtoCopyWith(WeatherDto value, $Res Function(WeatherDto) _then) = _$WeatherDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_weather') CurrentWeatherDto currentWeather
});


$CurrentWeatherDtoCopyWith<$Res> get currentWeather;

}
/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._self, this._then);

  final WeatherDto _self;
  final $Res Function(WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentWeather = null,}) {
  return _then(_self.copyWith(
currentWeather: null == currentWeather ? _self.currentWeather : currentWeather // ignore: cast_nullable_to_non_nullable
as CurrentWeatherDto,
  ));
}
/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWeatherDtoCopyWith<$Res> get currentWeather {
  
  return $CurrentWeatherDtoCopyWith<$Res>(_self.currentWeather, (value) {
    return _then(_self.copyWith(currentWeather: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_weather')  CurrentWeatherDto currentWeather)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.currentWeather);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_weather')  CurrentWeatherDto currentWeather)  $default,) {final _that = this;
switch (_that) {
case _WeatherDto():
return $default(_that.currentWeather);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_weather')  CurrentWeatherDto currentWeather)?  $default,) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.currentWeather);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherDto implements WeatherDto {
  const _WeatherDto({@JsonKey(name: 'current_weather') required this.currentWeather});
  factory _WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);

@override@JsonKey(name: 'current_weather') final  CurrentWeatherDto currentWeather;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDto&&(identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentWeather);

@override
String toString() {
  return 'WeatherDto(currentWeather: $currentWeather)';
}


}

/// @nodoc
abstract mixin class _$WeatherDtoCopyWith<$Res> implements $WeatherDtoCopyWith<$Res> {
  factory _$WeatherDtoCopyWith(_WeatherDto value, $Res Function(_WeatherDto) _then) = __$WeatherDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_weather') CurrentWeatherDto currentWeather
});


@override $CurrentWeatherDtoCopyWith<$Res> get currentWeather;

}
/// @nodoc
class __$WeatherDtoCopyWithImpl<$Res>
    implements _$WeatherDtoCopyWith<$Res> {
  __$WeatherDtoCopyWithImpl(this._self, this._then);

  final _WeatherDto _self;
  final $Res Function(_WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentWeather = null,}) {
  return _then(_WeatherDto(
currentWeather: null == currentWeather ? _self.currentWeather : currentWeather // ignore: cast_nullable_to_non_nullable
as CurrentWeatherDto,
  ));
}

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrentWeatherDtoCopyWith<$Res> get currentWeather {
  
  return $CurrentWeatherDtoCopyWith<$Res>(_self.currentWeather, (value) {
    return _then(_self.copyWith(currentWeather: value));
  });
}
}


/// @nodoc
mixin _$CurrentWeatherDto {

 double get temperature; int get weathercode;
/// Create a copy of CurrentWeatherDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWeatherDtoCopyWith<CurrentWeatherDto> get copyWith => _$CurrentWeatherDtoCopyWithImpl<CurrentWeatherDto>(this as CurrentWeatherDto, _$identity);

  /// Serializes this CurrentWeatherDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWeatherDto&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.weathercode, weathercode) || other.weathercode == weathercode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,weathercode);

@override
String toString() {
  return 'CurrentWeatherDto(temperature: $temperature, weathercode: $weathercode)';
}


}

/// @nodoc
abstract mixin class $CurrentWeatherDtoCopyWith<$Res>  {
  factory $CurrentWeatherDtoCopyWith(CurrentWeatherDto value, $Res Function(CurrentWeatherDto) _then) = _$CurrentWeatherDtoCopyWithImpl;
@useResult
$Res call({
 double temperature, int weathercode
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
@pragma('vm:prefer-inline') @override $Res call({Object? temperature = null,Object? weathercode = null,}) {
  return _then(_self.copyWith(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,weathercode: null == weathercode ? _self.weathercode : weathercode // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double temperature,  int weathercode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentWeatherDto() when $default != null:
return $default(_that.temperature,_that.weathercode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double temperature,  int weathercode)  $default,) {final _that = this;
switch (_that) {
case _CurrentWeatherDto():
return $default(_that.temperature,_that.weathercode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double temperature,  int weathercode)?  $default,) {final _that = this;
switch (_that) {
case _CurrentWeatherDto() when $default != null:
return $default(_that.temperature,_that.weathercode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrentWeatherDto implements CurrentWeatherDto {
  const _CurrentWeatherDto({required this.temperature, required this.weathercode});
  factory _CurrentWeatherDto.fromJson(Map<String, dynamic> json) => _$CurrentWeatherDtoFromJson(json);

@override final  double temperature;
@override final  int weathercode;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWeatherDto&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.weathercode, weathercode) || other.weathercode == weathercode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,weathercode);

@override
String toString() {
  return 'CurrentWeatherDto(temperature: $temperature, weathercode: $weathercode)';
}


}

/// @nodoc
abstract mixin class _$CurrentWeatherDtoCopyWith<$Res> implements $CurrentWeatherDtoCopyWith<$Res> {
  factory _$CurrentWeatherDtoCopyWith(_CurrentWeatherDto value, $Res Function(_CurrentWeatherDto) _then) = __$CurrentWeatherDtoCopyWithImpl;
@override @useResult
$Res call({
 double temperature, int weathercode
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
@override @pragma('vm:prefer-inline') $Res call({Object? temperature = null,Object? weathercode = null,}) {
  return _then(_CurrentWeatherDto(
temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,weathercode: null == weathercode ? _self.weathercode : weathercode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
