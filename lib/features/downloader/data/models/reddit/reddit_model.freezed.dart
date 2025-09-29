// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reddit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RedditModel {

 List<RedditMedia>? get medias; String? get type;
/// Create a copy of RedditModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedditModelCopyWith<RedditModel> get copyWith => _$RedditModelCopyWithImpl<RedditModel>(this as RedditModel, _$identity);

  /// Serializes this RedditModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedditModel&&const DeepCollectionEquality().equals(other.medias, medias)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(medias),type);

@override
String toString() {
  return 'RedditModel(medias: $medias, type: $type)';
}


}

/// @nodoc
abstract mixin class $RedditModelCopyWith<$Res>  {
  factory $RedditModelCopyWith(RedditModel value, $Res Function(RedditModel) _then) = _$RedditModelCopyWithImpl;
@useResult
$Res call({
 List<RedditMedia>? medias, String? type
});




}
/// @nodoc
class _$RedditModelCopyWithImpl<$Res>
    implements $RedditModelCopyWith<$Res> {
  _$RedditModelCopyWithImpl(this._self, this._then);

  final RedditModel _self;
  final $Res Function(RedditModel) _then;

/// Create a copy of RedditModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? medias = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
medias: freezed == medias ? _self.medias : medias // ignore: cast_nullable_to_non_nullable
as List<RedditMedia>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RedditModel].
extension RedditModelPatterns on RedditModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedditModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedditModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedditModel value)  $default,){
final _that = this;
switch (_that) {
case _RedditModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedditModel value)?  $default,){
final _that = this;
switch (_that) {
case _RedditModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RedditMedia>? medias,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedditModel() when $default != null:
return $default(_that.medias,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RedditMedia>? medias,  String? type)  $default,) {final _that = this;
switch (_that) {
case _RedditModel():
return $default(_that.medias,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RedditMedia>? medias,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _RedditModel() when $default != null:
return $default(_that.medias,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedditModel implements RedditModel {
  const _RedditModel({final  List<RedditMedia>? medias, this.type}): _medias = medias;
  factory _RedditModel.fromJson(Map<String, dynamic> json) => _$RedditModelFromJson(json);

 final  List<RedditMedia>? _medias;
@override List<RedditMedia>? get medias {
  final value = _medias;
  if (value == null) return null;
  if (_medias is EqualUnmodifiableListView) return _medias;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? type;

/// Create a copy of RedditModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedditModelCopyWith<_RedditModel> get copyWith => __$RedditModelCopyWithImpl<_RedditModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedditModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedditModel&&const DeepCollectionEquality().equals(other._medias, _medias)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_medias),type);

@override
String toString() {
  return 'RedditModel(medias: $medias, type: $type)';
}


}

/// @nodoc
abstract mixin class _$RedditModelCopyWith<$Res> implements $RedditModelCopyWith<$Res> {
  factory _$RedditModelCopyWith(_RedditModel value, $Res Function(_RedditModel) _then) = __$RedditModelCopyWithImpl;
@override @useResult
$Res call({
 List<RedditMedia>? medias, String? type
});




}
/// @nodoc
class __$RedditModelCopyWithImpl<$Res>
    implements _$RedditModelCopyWith<$Res> {
  __$RedditModelCopyWithImpl(this._self, this._then);

  final _RedditModel _self;
  final $Res Function(_RedditModel) _then;

/// Create a copy of RedditModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? medias = freezed,Object? type = freezed,}) {
  return _then(_RedditModel(
medias: freezed == medias ? _self._medias : medias // ignore: cast_nullable_to_non_nullable
as List<RedditMedia>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RedditMedia {

 String? get url; String? get extension; String? get type;
/// Create a copy of RedditMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedditMediaCopyWith<RedditMedia> get copyWith => _$RedditMediaCopyWithImpl<RedditMedia>(this as RedditMedia, _$identity);

  /// Serializes this RedditMedia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedditMedia&&(identical(other.url, url) || other.url == url)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,extension,type);

@override
String toString() {
  return 'RedditMedia(url: $url, extension: $extension, type: $type)';
}


}

/// @nodoc
abstract mixin class $RedditMediaCopyWith<$Res>  {
  factory $RedditMediaCopyWith(RedditMedia value, $Res Function(RedditMedia) _then) = _$RedditMediaCopyWithImpl;
@useResult
$Res call({
 String? url, String? extension, String? type
});




}
/// @nodoc
class _$RedditMediaCopyWithImpl<$Res>
    implements $RedditMediaCopyWith<$Res> {
  _$RedditMediaCopyWithImpl(this._self, this._then);

  final RedditMedia _self;
  final $Res Function(RedditMedia) _then;

/// Create a copy of RedditMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? extension = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,extension: freezed == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RedditMedia].
extension RedditMediaPatterns on RedditMedia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedditMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedditMedia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedditMedia value)  $default,){
final _that = this;
switch (_that) {
case _RedditMedia():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedditMedia value)?  $default,){
final _that = this;
switch (_that) {
case _RedditMedia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? url,  String? extension,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedditMedia() when $default != null:
return $default(_that.url,_that.extension,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? url,  String? extension,  String? type)  $default,) {final _that = this;
switch (_that) {
case _RedditMedia():
return $default(_that.url,_that.extension,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? url,  String? extension,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _RedditMedia() when $default != null:
return $default(_that.url,_that.extension,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedditMedia implements RedditMedia {
  const _RedditMedia({this.url, this.extension, this.type});
  factory _RedditMedia.fromJson(Map<String, dynamic> json) => _$RedditMediaFromJson(json);

@override final  String? url;
@override final  String? extension;
@override final  String? type;

/// Create a copy of RedditMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedditMediaCopyWith<_RedditMedia> get copyWith => __$RedditMediaCopyWithImpl<_RedditMedia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedditMediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedditMedia&&(identical(other.url, url) || other.url == url)&&(identical(other.extension, extension) || other.extension == extension)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,extension,type);

@override
String toString() {
  return 'RedditMedia(url: $url, extension: $extension, type: $type)';
}


}

/// @nodoc
abstract mixin class _$RedditMediaCopyWith<$Res> implements $RedditMediaCopyWith<$Res> {
  factory _$RedditMediaCopyWith(_RedditMedia value, $Res Function(_RedditMedia) _then) = __$RedditMediaCopyWithImpl;
@override @useResult
$Res call({
 String? url, String? extension, String? type
});




}
/// @nodoc
class __$RedditMediaCopyWithImpl<$Res>
    implements _$RedditMediaCopyWith<$Res> {
  __$RedditMediaCopyWithImpl(this._self, this._then);

  final _RedditMedia _self;
  final $Res Function(_RedditMedia) _then;

/// Create a copy of RedditMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = freezed,Object? extension = freezed,Object? type = freezed,}) {
  return _then(_RedditMedia(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,extension: freezed == extension ? _self.extension : extension // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
