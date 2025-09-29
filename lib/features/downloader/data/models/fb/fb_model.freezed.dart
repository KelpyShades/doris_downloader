// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fb_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FbModel {

 String? get type;@JsonKey(name: 'download_url') String? get downloadUrl;
/// Create a copy of FbModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FbModelCopyWith<FbModel> get copyWith => _$FbModelCopyWithImpl<FbModel>(this as FbModel, _$identity);

  /// Serializes this FbModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FbModel&&(identical(other.type, type) || other.type == type)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,downloadUrl);

@override
String toString() {
  return 'FbModel(type: $type, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class $FbModelCopyWith<$Res>  {
  factory $FbModelCopyWith(FbModel value, $Res Function(FbModel) _then) = _$FbModelCopyWithImpl;
@useResult
$Res call({
 String? type,@JsonKey(name: 'download_url') String? downloadUrl
});




}
/// @nodoc
class _$FbModelCopyWithImpl<$Res>
    implements $FbModelCopyWith<$Res> {
  _$FbModelCopyWithImpl(this._self, this._then);

  final FbModel _self;
  final $Res Function(FbModel) _then;

/// Create a copy of FbModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? downloadUrl = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FbModel].
extension FbModelPatterns on FbModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FbModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FbModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FbModel value)  $default,){
final _that = this;
switch (_that) {
case _FbModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FbModel value)?  $default,){
final _that = this;
switch (_that) {
case _FbModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type, @JsonKey(name: 'download_url')  String? downloadUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FbModel() when $default != null:
return $default(_that.type,_that.downloadUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type, @JsonKey(name: 'download_url')  String? downloadUrl)  $default,) {final _that = this;
switch (_that) {
case _FbModel():
return $default(_that.type,_that.downloadUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type, @JsonKey(name: 'download_url')  String? downloadUrl)?  $default,) {final _that = this;
switch (_that) {
case _FbModel() when $default != null:
return $default(_that.type,_that.downloadUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FbModel implements FbModel {
  const _FbModel({this.type, @JsonKey(name: 'download_url') this.downloadUrl});
  factory _FbModel.fromJson(Map<String, dynamic> json) => _$FbModelFromJson(json);

@override final  String? type;
@override@JsonKey(name: 'download_url') final  String? downloadUrl;

/// Create a copy of FbModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FbModelCopyWith<_FbModel> get copyWith => __$FbModelCopyWithImpl<_FbModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FbModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FbModel&&(identical(other.type, type) || other.type == type)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,downloadUrl);

@override
String toString() {
  return 'FbModel(type: $type, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class _$FbModelCopyWith<$Res> implements $FbModelCopyWith<$Res> {
  factory _$FbModelCopyWith(_FbModel value, $Res Function(_FbModel) _then) = __$FbModelCopyWithImpl;
@override @useResult
$Res call({
 String? type,@JsonKey(name: 'download_url') String? downloadUrl
});




}
/// @nodoc
class __$FbModelCopyWithImpl<$Res>
    implements _$FbModelCopyWith<$Res> {
  __$FbModelCopyWithImpl(this._self, this._then);

  final _FbModel _self;
  final $Res Function(_FbModel) _then;

/// Create a copy of FbModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? downloadUrl = freezed,}) {
  return _then(_FbModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
