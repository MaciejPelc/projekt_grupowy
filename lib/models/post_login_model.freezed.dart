// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostLoginModel _$PostLoginModelFromJson(Map<String, dynamic> json) {
  return _PostLoginModel.fromJson(json);
}

/// @nodoc
mixin _$PostLoginModel {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get twoFactorCode => throw _privateConstructorUsedError;
  String? get twoFactorRecoveryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostLoginModelCopyWith<PostLoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostLoginModelCopyWith<$Res> {
  factory $PostLoginModelCopyWith(
          PostLoginModel value, $Res Function(PostLoginModel) then) =
      _$PostLoginModelCopyWithImpl<$Res, PostLoginModel>;
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? twoFactorCode,
      String? twoFactorRecoveryCode});
}

/// @nodoc
class _$PostLoginModelCopyWithImpl<$Res, $Val extends PostLoginModel>
    implements $PostLoginModelCopyWith<$Res> {
  _$PostLoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? twoFactorCode = freezed,
    Object? twoFactorRecoveryCode = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorCode: freezed == twoFactorCode
          ? _value.twoFactorCode
          : twoFactorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorRecoveryCode: freezed == twoFactorRecoveryCode
          ? _value.twoFactorRecoveryCode
          : twoFactorRecoveryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostLoginModelImplCopyWith<$Res>
    implements $PostLoginModelCopyWith<$Res> {
  factory _$$PostLoginModelImplCopyWith(_$PostLoginModelImpl value,
          $Res Function(_$PostLoginModelImpl) then) =
      __$$PostLoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? email,
      String? password,
      String? twoFactorCode,
      String? twoFactorRecoveryCode});
}

/// @nodoc
class __$$PostLoginModelImplCopyWithImpl<$Res>
    extends _$PostLoginModelCopyWithImpl<$Res, _$PostLoginModelImpl>
    implements _$$PostLoginModelImplCopyWith<$Res> {
  __$$PostLoginModelImplCopyWithImpl(
      _$PostLoginModelImpl _value, $Res Function(_$PostLoginModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? twoFactorCode = freezed,
    Object? twoFactorRecoveryCode = freezed,
  }) {
    return _then(_$PostLoginModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorCode: freezed == twoFactorCode
          ? _value.twoFactorCode
          : twoFactorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      twoFactorRecoveryCode: freezed == twoFactorRecoveryCode
          ? _value.twoFactorRecoveryCode
          : twoFactorRecoveryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostLoginModelImpl implements _PostLoginModel {
  const _$PostLoginModelImpl(
      {this.email,
      this.password,
      this.twoFactorCode,
      this.twoFactorRecoveryCode});

  factory _$PostLoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostLoginModelImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? twoFactorCode;
  @override
  final String? twoFactorRecoveryCode;

  @override
  String toString() {
    return 'PostLoginModel(email: $email, password: $password, twoFactorCode: $twoFactorCode, twoFactorRecoveryCode: $twoFactorRecoveryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostLoginModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.twoFactorCode, twoFactorCode) ||
                other.twoFactorCode == twoFactorCode) &&
            (identical(other.twoFactorRecoveryCode, twoFactorRecoveryCode) ||
                other.twoFactorRecoveryCode == twoFactorRecoveryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, twoFactorCode, twoFactorRecoveryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostLoginModelImplCopyWith<_$PostLoginModelImpl> get copyWith =>
      __$$PostLoginModelImplCopyWithImpl<_$PostLoginModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostLoginModelImplToJson(
      this,
    );
  }
}

abstract class _PostLoginModel implements PostLoginModel {
  const factory _PostLoginModel(
      {final String? email,
      final String? password,
      final String? twoFactorCode,
      final String? twoFactorRecoveryCode}) = _$PostLoginModelImpl;

  factory _PostLoginModel.fromJson(Map<String, dynamic> json) =
      _$PostLoginModelImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get twoFactorCode;
  @override
  String? get twoFactorRecoveryCode;
  @override
  @JsonKey(ignore: true)
  _$$PostLoginModelImplCopyWith<_$PostLoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
