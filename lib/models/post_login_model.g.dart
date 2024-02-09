// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostLoginModelImpl _$$PostLoginModelImplFromJson(Map<String, dynamic> json) =>
    _$PostLoginModelImpl(
      email: json['email'] as String?,
      password: json['password'] as String?,
      twoFactorCode: json['twoFactorCode'] as String?,
      twoFactorRecoveryCode: json['twoFactorRecoveryCode'] as String?,
    );

Map<String, dynamic> _$$PostLoginModelImplToJson(
        _$PostLoginModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'twoFactorCode': instance.twoFactorCode,
      'twoFactorRecoveryCode': instance.twoFactorRecoveryCode,
    };
