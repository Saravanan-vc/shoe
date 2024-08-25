import 'package:json_annotation/json_annotation.dart';
part 'fixedmodel.g.dart';

@JsonSerializable()
class Fixedmodel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'price')
  int? price;
  @JsonKey(name: 'image')
  String? image;
  bool like;

  Fixedmodel({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    this.like = false,
  });

  factory Fixedmodel.fromjson(Map<String, dynamic> json) =>
      _$FixedmodelFromJson(json);
}
