// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ig_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IgModel {

 String? get type;@JsonKey(name: 'download_url') String? get downloadUrl;
/// Create a copy of IgModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IgModelCopyWith<IgModel> get copyWith => _$IgModelCopyWithImpl<IgModel>(this as IgModel, _$identity);

  /// Serializes this IgModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IgModel&&(identical(other.type, type) || other.type == type)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,downloadUrl);

@override
String toString() {
  return 'IgModel(type: $type, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class $IgModelCopyWith<$Res>  {
  factory $IgModelCopyWith(IgModel value, $Res Function(IgModel) _then) = _$IgModelCopyWithImpl;
@useResult
$Res call({
 String? type,@JsonKey(name: 'download_url') String? downloadUrl
});




}
/// @nodoc
class _$IgModelCopyWithImpl<$Res>
    implements $IgModelCopyWith<$Res> {
  _$IgModelCopyWithImpl(this._self, this._then);

  final IgModel _self;
  final $Res Function(IgModel) _then;

/// Create a copy of IgModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? downloadUrl = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IgModel].
extension IgModelPatterns on IgModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IgModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IgModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IgModel value)  $default,){
final _that = this;
switch (_that) {
case _IgModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IgModel value)?  $default,){
final _that = this;
switch (_that) {
case _IgModel() when $default != null:
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
case _IgModel() when $default != null:
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
case _IgModel():
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
case _IgModel() when $default != null:
return $default(_that.type,_that.downloadUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IgModel implements IgModel {
  const _IgModel({this.type, @JsonKey(name: 'download_url') this.downloadUrl});
  factory _IgModel.fromJson(Map<String, dynamic> json) => _$IgModelFromJson(json);

@override final  String? type;
@override@JsonKey(name: 'download_url') final  String? downloadUrl;

/// Create a copy of IgModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IgModelCopyWith<_IgModel> get copyWith => __$IgModelCopyWithImpl<_IgModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IgModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IgModel&&(identical(other.type, type) || other.type == type)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,downloadUrl);

@override
String toString() {
  return 'IgModel(type: $type, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class _$IgModelCopyWith<$Res> implements $IgModelCopyWith<$Res> {
  factory _$IgModelCopyWith(_IgModel value, $Res Function(_IgModel) _then) = __$IgModelCopyWithImpl;
@override @useResult
$Res call({
 String? type,@JsonKey(name: 'download_url') String? downloadUrl
});




}
/// @nodoc
class __$IgModelCopyWithImpl<$Res>
    implements _$IgModelCopyWith<$Res> {
  __$IgModelCopyWithImpl(this._self, this._then);

  final _IgModel _self;
  final $Res Function(_IgModel) _then;

/// Create a copy of IgModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? downloadUrl = freezed,}) {
  return _then(_IgModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
