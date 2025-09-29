// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';


part 'pinterest_model.freezed.dart';
part 'pinterest_model.g.dart';

@freezed
sealed class PinterestModel with _$PinterestModel {
  const factory PinterestModel({
    String? type,
    @JsonKey(name: 'download_url') String? downloadUrl,
  }) = _PinterestModel;

  factory PinterestModel.fromJson(Map<String, dynamic> json) => _$PinterestModelFromJson(json);
}

  