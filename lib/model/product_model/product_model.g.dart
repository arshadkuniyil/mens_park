// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String?,
      category: json['category'] as String?,
      color: json['color'] as String?,
      fullSizeImgPath: json['fullSizeImgPath'] as String?,
      imgPath1: json['imgPath1'] as String?,
      imgPath2: json['imgPath2'] as String?,
      imgPath3: json['imgPath3'] as String?,
      price: json['price'] as int?,
      productName: json['productName'] as String?,
      shortDescription: json['shortDescription'] as String?,
      size: (json['size'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'color': instance.color,
      'fullSizeImgPath': instance.fullSizeImgPath,
      'imgPath1': instance.imgPath1,
      'imgPath2': instance.imgPath2,
      'imgPath3': instance.imgPath3,
      'price': instance.price,
      'productName': instance.productName,
      'shortDescription': instance.shortDescription,
      'size': instance.size,
    };
