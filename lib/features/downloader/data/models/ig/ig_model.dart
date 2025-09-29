// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ig_model.freezed.dart';
part 'ig_model.g.dart';

// @JsonSerializable(ignoreUnannotated: true)
@freezed
sealed class IgModel with _$IgModel {
  const factory IgModel({
    String? type,
    @JsonKey(name: 'download_url') String? downloadUrl,
  }) = _IgModel;

  factory IgModel.fromJson(Map<String, dynamic> json) => _$IgModelFromJson(json);
}
