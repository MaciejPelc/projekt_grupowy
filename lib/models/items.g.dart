// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemsImpl _$$ItemsImplFromJson(Map<String, dynamic> json) => _$ItemsImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      categoryId: json['categoryId'] as String?,
      categoryName: json['categoryName'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$$ItemsImplToJson(_$ItemsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'price': instance.price,
      'isAvailable': instance.isAvailable,
    };
