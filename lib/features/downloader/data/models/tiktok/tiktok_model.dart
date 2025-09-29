// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tiktok_model.freezed.dart';
part 'tiktok_model.g.dart';

@freezed
// @JsonSerializable(ignoreUnannotated: false, disallowUnrecognizedKeys: false)
sealed class TiktokModel with _$TiktokModel {
  const factory TiktokModel({
    String? type,
    @JsonKey(name: 'download_url') String? downloadUrl,
  }) = _TiktokModel;

  factory TiktokModel.fromJson(Map<String, dynamic> json) =>
      _$TiktokModelFromJson(json);
}
