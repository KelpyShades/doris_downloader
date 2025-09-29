// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reddit_model.freezed.dart';
part 'reddit_model.g.dart';

@freezed
// @JsonSerializable(ignoreUnannotated: false, disallowUnrecognizedKeys: false)
sealed class RedditModel with _$RedditModel {
  const factory RedditModel({List<RedditMedia>? medias, String? type}) =
      _RedditModel;

  factory RedditModel.fromJson(Map<String, dynamic> json) =>
      _$RedditModelFromJson(json);
}

@freezed
// @JsonSerializable(ignoreUnannotated: false, disallowUnrecognizedKeys: false)
sealed class RedditMedia with _$RedditMedia {
  const factory RedditMedia({String? url, String? extension, String? type}) =
      _RedditMedia;

  factory RedditMedia.fromJson(Map<String, dynamic> json) =>
      _$RedditMediaFromJson(json);
}
