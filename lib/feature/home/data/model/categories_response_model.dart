import 'package:json_annotation/json_annotation.dart';

part 'categories_response_model.g.dart';

@JsonSerializable()
class CategoriesResponseModel {
  final List<Category> categories;

  CategoriesResponseModel({required this.categories});

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelFromJson(json);


}


@JsonSerializable()
class Category {
  final String id;
  final String name;
  final String coverPictureUrl;
  final String description;

  Category({required this.id, required this.name, required this.coverPictureUrl, required this.description});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
