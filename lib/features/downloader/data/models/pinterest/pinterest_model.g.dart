// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinterest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PinterestModel _$PinterestModelFromJson(Map<String, dynamic> json) =>
    _PinterestModel(
      type: json['type'] as String?,
      downloadUrl: json['download_url'] as String?,
    );

Map<String, dynamic> _$PinterestModelToJson(_PinterestModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'download_url': instance.downloadUrl,
    };
