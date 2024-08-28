// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixedmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fixedmodel _$FixedmodelFromJson(Map<String, dynamic> json) => Fixedmodel(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      like: json['like'] as bool? ?? false,
    );

Map<String, dynamic> _$FixedmodelToJson(Fixedmodel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'image': instance.image,
      'like': instance.like,
    };
