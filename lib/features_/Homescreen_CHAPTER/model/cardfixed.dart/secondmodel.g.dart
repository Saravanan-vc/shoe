// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Secondmodel _$SecondmodelFromJson(Map<String, dynamic> json) => Secondmodel(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      price: (json['price'] as num?)?.toInt(),
      name: json['name'] as String?,
      like: json['like'] as bool? ?? false,
      cart: json['cart'] as bool? ?? false,
    );

Map<String, dynamic> _$SecondmodelToJson(Secondmodel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'image': instance.image,
      'like': instance.like,
      'cart': instance.cart,
    };
