import 'package:json_annotation/json_annotation.dart';
part 'secondmodel.g.dart';
@JsonSerializable()
class Secondmodel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'price')
  int? price;
  @JsonKey(name: 'image')
  String? image;
  bool like;
  Secondmodel({
    required this.id,
    required this.image,
    required this.price,
    required this.name,
    this.like = false,
  });

  factory Secondmodel.fromjson(Map<String, dynamic> json) =>
      _$SecondmodelFromJson(json);
}
