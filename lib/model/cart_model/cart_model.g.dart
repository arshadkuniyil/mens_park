// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      id: json['id'] as String?,
      productName: json['productName'] as String?,
      category: json['category'] as String?,
      color: json['color'] as String?,
      imgPath1: json['imgPath1'] as String?,
      productSize: json['productSize'] as String?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      totalPrice: json['totalPrice'] as int?,
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'category': instance.category,
      'color': instance.color,
      'imgPath1': instance.imgPath1,
      'productSize': instance.productSize,
      'price': instance.price,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
    };
