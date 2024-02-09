// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseProductModelImpl _$$ResponseProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseProductModelImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: (json['pageNumber'] as num?)?.toDouble(),
      totalPages: (json['totalPages'] as num?)?.toDouble(),
      totalCount: (json['totalCount'] as num?)?.toDouble(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$$ResponseProductModelImplToJson(
        _$ResponseProductModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pageNumber': instance.pageNumber,
      'totalPages': instance.totalPages,
      'totalCount': instance.totalCount,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };
