// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseProductModelImpl _$$ResponseProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseProductModelImpl(
      pageNumber: json['pageNumber'] as int?,
      totalPages: json['totalPages'] as int?,
      totalCount: json['totalCount'] as int?,
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$$ResponseProductModelImplToJson(
        _$ResponseProductModelImpl instance) =>
    <String, dynamic>{
      'pageNumber': instance.pageNumber,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };
