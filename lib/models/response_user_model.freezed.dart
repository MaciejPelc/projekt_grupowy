// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseUserModel _$ResponseUserModelFromJson(Map<String, dynamic> json) {
  return _ResponseUserModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseUserModel {
  String? get tokenType => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get expiresIn => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseUserModelCopyWith<ResponseUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseUserModelCopyWith<$Res> {
  factory $ResponseUserModelCopyWith(
          ResponseUserModel value, $Res Function(ResponseUserModel) then) =
      _$ResponseUserModelCopyWithImpl<$Res, ResponseUserModel>;
  @useResult
  $Res call(
      {String? tokenType,
      String? accessToken,
      String? expiresIn,
      String? refreshToken});
}

/// @nodoc
class _$ResponseUserModelCopyWithImpl<$Res, $Val extends ResponseUserModel>
    implements $ResponseUserModelCopyWith<$Res> {
  _$ResponseUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenType = freezed,
    Object? accessToken = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseUserModelImplCopyWith<$Res>
    implements $ResponseUserModelCopyWith<$Res> {
  factory _$$ResponseUserModelImplCopyWith(_$ResponseUserModelImpl value,
          $Res Function(_$ResponseUserModelImpl) then) =
      __$$ResponseUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? tokenType,
      String? accessToken,
      String? expiresIn,
      String? refreshToken});
}

/// @nodoc
class __$$ResponseUserModelImplCopyWithImpl<$Res>
    extends _$ResponseUserModelCopyWithImpl<$Res, _$ResponseUserModelImpl>
    implements _$$ResponseUserModelImplCopyWith<$Res> {
  __$$ResponseUserModelImplCopyWithImpl(_$ResponseUserModelImpl _value,
      $Res Function(_$ResponseUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenType = freezed,
    Object? accessToken = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$ResponseUserModelImpl(
      tokenType: freezed == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseUserModelImpl implements _ResponseUserModel {
  const _$ResponseUserModelImpl(
      {this.tokenType, this.accessToken, this.expiresIn, this.refreshToken});

  factory _$ResponseUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseUserModelImplFromJson(json);

  @override
  final String? tokenType;
  @override
  final String? accessToken;
  @override
  final String? expiresIn;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'ResponseUserModel(tokenType: $tokenType, accessToken: $accessToken, expiresIn: $expiresIn, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseUserModelImpl &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokenType, accessToken, expiresIn, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseUserModelImplCopyWith<_$ResponseUserModelImpl> get copyWith =>
      __$$ResponseUserModelImplCopyWithImpl<_$ResponseUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseUserModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseUserModel implements ResponseUserModel {
  const factory _ResponseUserModel(
      {final String? tokenType,
      final String? accessToken,
      final String? expiresIn,
      final String? refreshToken}) = _$ResponseUserModelImpl;

  factory _ResponseUserModel.fromJson(Map<String, dynamic> json) =
      _$ResponseUserModelImpl.fromJson;

  @override
  String? get tokenType;
  @override
  String? get accessToken;
  @override
  String? get expiresIn;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$ResponseUserModelImplCopyWith<_$ResponseUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
