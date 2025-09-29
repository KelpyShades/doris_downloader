// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pinterest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PinterestModel {

 String? get type;@JsonKey(name: 'download_url') String? get downloadUrl;
/// Create a copy of PinterestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinterestModelCopyWith<PinterestModel> get copyWith => _$PinterestModelCopyWithImpl<PinterestModel>(this as PinterestModel, _$identity);

  /// Serializes this PinterestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PinterestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,downloadUrl);

@override
String toString() {
  return 'PinterestModel(type: $type, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class $PinterestModelCopyWith<$Res>  {
  factory $PinterestModelCopyWith(PinterestModel value, $Res Function(PinterestModel) _then) = _$PinterestModelCopyWithImpl;
@useResult
$Res call({
 String? type,@JsonKey(name: 'download_url') String? downloadUrl
});




}
/// @nodoc
class _$PinterestModelCopyWithImpl<$Res>
    implements $PinterestModelCopyWith<$Res> {
  _$PinterestModelCopyWithImpl(this._self, this._then);

  final PinterestModel _self;
  final $Res Function(PinterestModel) _then;

/// Create a copy of PinterestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? downloadUrl = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PinterestModel].
extension PinterestModelPatterns on PinterestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PinterestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PinterestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PinterestModel value)  $default,){
final _that = this;
switch (_that) {
case _PinterestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PinterestModel value)?  $default,){
final _that = this;
switch (_that) {
case _PinterestModel() when $default != null:
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
case _PinterestModel() when $default != null:
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
case _PinterestModel():
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
case _PinterestModel() when $default != null:
return $default(_that.type,_that.downloadUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PinterestModel implements PinterestModel {
  const _PinterestModel({this.type, @JsonKey(name: 'download_url') this.downloadUrl});
  factory _PinterestModel.fromJson(Map<String, dynamic> json) => _$PinterestModelFromJson(json);

@override final  String? type;
@override@JsonKey(name: 'download_url') final  String? downloadUrl;

/// Create a copy of PinterestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PinterestModelCopyWith<_PinterestModel> get copyWith => __$PinterestModelCopyWithImpl<_PinterestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PinterestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PinterestModel&&(identical(other.type, type) || other.type == type)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,downloadUrl);

@override
String toString() {
  return 'PinterestModel(type: $type, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class _$PinterestModelCopyWith<$Res> implements $PinterestModelCopyWith<$Res> {
  factory _$PinterestModelCopyWith(_PinterestModel value, $Res Function(_PinterestModel) _then) = __$PinterestModelCopyWithImpl;
@override @useResult
$Res call({
 String? type,@JsonKey(name: 'download_url') String? downloadUrl
});




}
/// @nodoc
class __$PinterestModelCopyWithImpl<$Res>
    implements _$PinterestModelCopyWith<$Res> {
  __$PinterestModelCopyWithImpl(this._self, this._then);

  final _PinterestModel _self;
  final $Res Function(_PinterestModel) _then;

/// Create a copy of PinterestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? downloadUrl = freezed,}) {
  return _then(_PinterestModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
