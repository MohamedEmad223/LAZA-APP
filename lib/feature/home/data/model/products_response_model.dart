import 'package:json_annotation/json_annotation.dart';

part 'products_response_model.g.dart';

@JsonSerializable()
class ProductsResponseModel {
  @JsonKey(name: 'items')
  final List<Product> products;
  final int page;
  final int pageSize;
  final int totalCount;
  final bool hasNextPage;
  final bool hasPreviousPage;
  ProductsResponseModel({
    required this.products,
    required this.page,
    required this.pageSize,
    required this.totalCount,
    required this.hasNextPage,
    required this.hasPreviousPage,
  });

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseModelFromJson(json);
}

@JsonSerializable()
class Product {
  final String id;
  final String name;
  final String description;
  final String productCode;
  final String arabicName;
  final String arabicDescription;
  final String coverPictureUrl;
  final String? productPictures;
  final double price;
  final int stock;
  final double weight;
  final String color;
  final int rating;
  final int reviewsCount;
  final int discountPercentage;
  final String sellerId;
  List<String> categories;

  Product(
    this.categories,
    this.id,
    this.name,
    this.description,
    this.productCode,
    this.arabicName,
    this.arabicDescription,
    this.coverPictureUrl,
    this.productPictures,
    this.price,
    this.stock,
    this.weight,
    this.color,
    this.rating,
    this.reviewsCount,
    this.discountPercentage,
    this.sellerId,
  );
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}