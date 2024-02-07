import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_user_model.freezed.dart';
part 'response_user_model.g.dart';

@freezed
class ResponseUserModel with _$ResponseUserModel {
  const factory ResponseUserModel({
    required String tokenType,
    required String accessToken,
    required String expiresIn,
    required String refreshToken,
  }) = _ResponseUserModel;
  factory ResponseUserModel.fromJson(Map<String, Object?> json) =>
      _$ResponseUserModelFromJson(json);
}
