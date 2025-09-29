// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RedditModel _$RedditModelFromJson(Map<String, dynamic> json) => _RedditModel(
  medias: (json['medias'] as List<dynamic>?)
      ?.map((e) => RedditMedia.fromJson(e as Map<String, dynamic>))
      .toList(),
  type: json['type'] as String?,
);

Map<String, dynamic> _$RedditModelToJson(_RedditModel instance) =>
    <String, dynamic>{'medias': instance.medias, 'type': instance.type};

_RedditMedia _$RedditMediaFromJson(Map<String, dynamic> json) => _RedditMedia(
  url: json['url'] as String?,
  extension: json['extension'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$RedditMediaToJson(_RedditMedia instance) =>
    <String, dynamic>{
      'url': instance.url,
      'extension': instance.extension,
      'type': instance.type,
    };
