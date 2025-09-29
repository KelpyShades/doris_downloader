// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fb_model.freezed.dart';
part 'fb_model.g.dart';

@freezed
// @JsonSerializable(ignoreUnannotated: false, disallowUnrecognizedKeys: false)
sealed class FbModel with _$FbModel {
  const factory FbModel({
    String? type,
    @JsonKey(name: 'download_url') String? downloadUrl,
  }) = _FbModel;

  factory FbModel.fromJson(Map<String, dynamic> json) =>
      _$FbModelFromJson(json);
}
