import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable()
class OrderModel {
  String? id;
  String? productName;
  String? category;
  String? color;
  String? imgPath1;
  String? productSize;
  int? price;
  int? quantity;
  int? totalPrice;
  String? placedTime;
  String? address;
  
  OrderModel(
      {this.id,
      this.productName,
      this.category,
      this.color,
      this.imgPath1,
      this.productSize,
      this.price,
      this.quantity,
      this.totalPrice,
      this.placedTime,
      this.address});

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return _$OrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}
