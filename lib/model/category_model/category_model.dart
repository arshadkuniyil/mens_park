import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  List<String>? categoryNames;

  CategoryModel({ this.categoryNames});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return _$CategoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
