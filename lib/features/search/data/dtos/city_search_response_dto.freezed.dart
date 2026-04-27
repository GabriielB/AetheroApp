// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_search_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitySearchResponseDto {

 List<CityDto> get results;
/// Create a copy of CitySearchResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitySearchResponseDtoCopyWith<CitySearchResponseDto> get copyWith => _$CitySearchResponseDtoCopyWithImpl<CitySearchResponseDto>(this as CitySearchResponseDto, _$identity);

  /// Serializes this CitySearchResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitySearchResponseDto&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'CitySearchResponseDto(results: $results)';
}


}

/// @nodoc
abstract mixin class $CitySearchResponseDtoCopyWith<$Res>  {
  factory $CitySearchResponseDtoCopyWith(CitySearchResponseDto value, $Res Function(CitySearchResponseDto) _then) = _$CitySearchResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<CityDto> results
});




}
/// @nodoc
class _$CitySearchResponseDtoCopyWithImpl<$Res>
    implements $CitySearchResponseDtoCopyWith<$Res> {
  _$CitySearchResponseDtoCopyWithImpl(this._self, this._then);

  final CitySearchResponseDto _self;
  final $Res Function(CitySearchResponseDto) _then;

/// Create a copy of CitySearchResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<CityDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CitySearchResponseDto].
extension CitySearchResponseDtoPatterns on CitySearchResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CitySearchResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CitySearchResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CitySearchResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CitySearchResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CitySearchResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CitySearchResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CityDto> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CitySearchResponseDto() when $default != null:
return $default(_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CityDto> results)  $default,) {final _that = this;
switch (_that) {
case _CitySearchResponseDto():
return $default(_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CityDto> results)?  $default,) {final _that = this;
switch (_that) {
case _CitySearchResponseDto() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CitySearchResponseDto implements CitySearchResponseDto {
  const _CitySearchResponseDto({final  List<CityDto> results = const []}): _results = results;
  factory _CitySearchResponseDto.fromJson(Map<String, dynamic> json) => _$CitySearchResponseDtoFromJson(json);

 final  List<CityDto> _results;
@override@JsonKey() List<CityDto> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of CitySearchResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CitySearchResponseDtoCopyWith<_CitySearchResponseDto> get copyWith => __$CitySearchResponseDtoCopyWithImpl<_CitySearchResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CitySearchResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CitySearchResponseDto&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'CitySearchResponseDto(results: $results)';
}


}

/// @nodoc
abstract mixin class _$CitySearchResponseDtoCopyWith<$Res> implements $CitySearchResponseDtoCopyWith<$Res> {
  factory _$CitySearchResponseDtoCopyWith(_CitySearchResponseDto value, $Res Function(_CitySearchResponseDto) _then) = __$CitySearchResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<CityDto> results
});




}
/// @nodoc
class __$CitySearchResponseDtoCopyWithImpl<$Res>
    implements _$CitySearchResponseDtoCopyWith<$Res> {
  __$CitySearchResponseDtoCopyWithImpl(this._self, this._then);

  final _CitySearchResponseDto _self;
  final $Res Function(_CitySearchResponseDto) _then;

/// Create a copy of CitySearchResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_CitySearchResponseDto(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<CityDto>,
  ));
}


}

// dart format on
