


import 'package:json_annotation/json_annotation.dart';
part 'products_body_model.g.dart';

@JsonSerializable()
class ProductsBodyModel {
  final int page;
  final int pageSize;

  ProductsBodyModel({
    required this.page,
    required this.pageSize,
  });

  factory ProductsBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsBodyModelToJson(this);
}