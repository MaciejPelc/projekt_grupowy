// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseUserModelImpl _$$ResponseUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseUserModelImpl(
      tokenType: json['tokenType'] as String?,
      accessToken: json['accessToken'] as String?,
      expiresIn: json['expiresIn'] as int?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$ResponseUserModelImplToJson(
        _$ResponseUserModelImpl instance) =>
    <String, dynamic>{
      'tokenType': instance.tokenType,
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
      'refreshToken': instance.refreshToken,
    };
