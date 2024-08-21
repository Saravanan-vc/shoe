import 'package:json_annotation/json_annotation.dart';
part 'products_models.g.dart';

@JsonSerializable()
class ProductsModels {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'price')
  int? price;

  @JsonKey(name: 'name')
  String? name;

  ProductsModels({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
  });

  factory ProductsModels.fromjson(Map<String, dynamic> json) =>
       _$ProductsModelsFromJson(json);
}
