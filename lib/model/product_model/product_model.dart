import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String? category;
  String? color;
  String? fullSizeImgPath;
  String? imgPath1;
  String? imgPath2;
  String? imgPath3;
  int? price;
  String? productName;
  String? shortDescription;
  List<String>? size;

  ProductModel({
    this.category,
    this.color,
    this.fullSizeImgPath,
    this.imgPath1,
    this.imgPath2,
    this.imgPath3,
    this.price,
    this.productName,
    this.shortDescription,
    this.size,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
