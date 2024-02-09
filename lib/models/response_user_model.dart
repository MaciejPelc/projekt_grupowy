import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_user_model.freezed.dart';
part 'response_user_model.g.dart';

@freezed
class ResponseUserModel with _$ResponseUserModel {
  const factory ResponseUserModel({
    String? tokenType,
    String? accessToken,
    int? expiresIn,
    String? refreshToken,
  }) = _ResponseUserModel;
  factory ResponseUserModel.fromJson(Map<String, Object?> json) =>
      _$ResponseUserModelFromJson(json);
}
