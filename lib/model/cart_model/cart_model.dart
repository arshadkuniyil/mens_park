import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class CartModel {
  String? id;
  String? productName;
  String? category;
  String? color;
  String? imgPath1;
  String? productSize;
  int? price;
  int? quantity;
  int? totalPrice;

  CartModel({
    this.id,
    this.productName,
    this.category,
    this.color,
    this.imgPath1,
    this.productSize,
    this.price,
    this.quantity,
    this.totalPrice,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return _$CartModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
