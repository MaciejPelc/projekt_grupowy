// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseProductModel _$ResponseProductModelFromJson(Map<String, dynamic> json) {
  return _ResponseProductModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseProductModel {
  List<Items>? get items => throw _privateConstructorUsedError;
  double? get pageNumber => throw _privateConstructorUsedError;
  double? get totalPages => throw _privateConstructorUsedError;
  double? get totalCount => throw _privateConstructorUsedError;
  bool? get hasPreviousPage => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseProductModelCopyWith<ResponseProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseProductModelCopyWith<$Res> {
  factory $ResponseProductModelCopyWith(ResponseProductModel value,
          $Res Function(ResponseProductModel) then) =
      _$ResponseProductModelCopyWithImpl<$Res, ResponseProductModel>;
  @useResult
  $Res call(
      {List<Items>? items,
      double? pageNumber,
      double? totalPages,
      double? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage});
}

/// @nodoc
class _$ResponseProductModelCopyWithImpl<$Res,
        $Val extends ResponseProductModel>
    implements $ResponseProductModelCopyWith<$Res> {
  _$ResponseProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? pageNumber = freezed,
    Object? totalPages = freezed,
    Object? totalCount = freezed,
    Object? hasPreviousPage = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as double?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseProductModelImplCopyWith<$Res>
    implements $ResponseProductModelCopyWith<$Res> {
  factory _$$ResponseProductModelImplCopyWith(_$ResponseProductModelImpl value,
          $Res Function(_$ResponseProductModelImpl) then) =
      __$$ResponseProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Items>? items,
      double? pageNumber,
      double? totalPages,
      double? totalCount,
      bool? hasPreviousPage,
      bool? hasNextPage});
}

/// @nodoc
class __$$ResponseProductModelImplCopyWithImpl<$Res>
    extends _$ResponseProductModelCopyWithImpl<$Res, _$ResponseProductModelImpl>
    implements _$$ResponseProductModelImplCopyWith<$Res> {
  __$$ResponseProductModelImplCopyWithImpl(_$ResponseProductModelImpl _value,
      $Res Function(_$ResponseProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? pageNumber = freezed,
    Object? totalPages = freezed,
    Object? totalCount = freezed,
    Object? hasPreviousPage = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_$ResponseProductModelImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as double?,
      hasPreviousPage: freezed == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseProductModelImpl implements _ResponseProductModel {
  const _$ResponseProductModelImpl(
      {final List<Items>? items,
      this.pageNumber,
      this.totalPages,
      this.totalCount,
      this.hasPreviousPage,
      this.hasNextPage})
      : _items = items;

  factory _$ResponseProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseProductModelImplFromJson(json);

  final List<Items>? _items;
  @override
  List<Items>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? pageNumber;
  @override
  final double? totalPages;
  @override
  final double? totalCount;
  @override
  final bool? hasPreviousPage;
  @override
  final bool? hasNextPage;

  @override
  String toString() {
    return 'ResponseProductModel(items: $items, pageNumber: $pageNumber, totalPages: $totalPages, totalCount: $totalCount, hasPreviousPage: $hasPreviousPage, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseProductModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      pageNumber,
      totalPages,
      totalCount,
      hasPreviousPage,
      hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseProductModelImplCopyWith<_$ResponseProductModelImpl>
      get copyWith =>
          __$$ResponseProductModelImplCopyWithImpl<_$ResponseProductModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseProductModelImplToJson(
      this,
    );
  }
}

abstract class _ResponseProductModel implements ResponseProductModel {
  const factory _ResponseProductModel(
      {final List<Items>? items,
      final double? pageNumber,
      final double? totalPages,
      final double? totalCount,
      final bool? hasPreviousPage,
      final bool? hasNextPage}) = _$ResponseProductModelImpl;

  factory _ResponseProductModel.fromJson(Map<String, dynamic> json) =
      _$ResponseProductModelImpl.fromJson;

  @override
  List<Items>? get items;
  @override
  double? get pageNumber;
  @override
  double? get totalPages;
  @override
  double? get totalCount;
  @override
  bool? get hasPreviousPage;
  @override
  bool? get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$$ResponseProductModelImplCopyWith<_$ResponseProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
