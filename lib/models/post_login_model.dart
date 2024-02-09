import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_login_model.freezed.dart';
part 'post_login_model.g.dart';

@freezed
class PostLoginModel with _$PostLoginModel {
  const factory PostLoginModel({
    String? email,
    String? password,
    String? twoFactorCode,
    String? twoFactorRecoveryCode,
  }) = _PostLoginModel;
  factory PostLoginModel.fromJson(Map<String, Object?> json) =>
      _$PostLoginModelFromJson(json);
}
