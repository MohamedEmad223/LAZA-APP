// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponseModel _$ProductsResponseModelFromJson(
  Map<String, dynamic> json,
) => ProductsResponseModel(
  products: (json['items'] as List<dynamic>)
      .map((e) => Product.fromJson(e as Map<String, dynamic>))
      .toList(),
  page: (json['page'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
  hasNextPage: json['hasNextPage'] as bool,
  hasPreviousPage: json['hasPreviousPage'] as bool,
);



Product _$ProductFromJson(Map<String, dynamic> json) => Product(
  (json['categories'] as List<dynamic>).map((e) => e as String).toList(),
  json['id'] as String,
  json['name'] as String,
  json['description'] as String,
  json['productCode'] as String,
  json['arabicName'] as String,
  json['arabicDescription'] as String,
  json['coverPictureUrl'] as String,
  json['productPictures'] as String?,
  (json['price'] as num).toDouble(),
  (json['stock'] as num).toInt(),
  (json['weight'] as num).toDouble(),
  json['color'] as String,
  (json['rating'] as num).toInt(),
  (json['reviewsCount'] as num).toInt(),
  (json['discountPercentage'] as num).toInt(),
  json['sellerId'] as String,
);


