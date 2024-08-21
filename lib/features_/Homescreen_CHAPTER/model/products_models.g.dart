// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsModels _$ProductsModelsFromJson(Map<String, dynamic> json) =>
    ProductsModels(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductsModelsToJson(ProductsModels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'price': instance.price,
      'name': instance.name,
    };
