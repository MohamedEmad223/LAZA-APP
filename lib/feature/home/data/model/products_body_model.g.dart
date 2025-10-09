// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsBodyModel _$ProductsBodyModelFromJson(Map<String, dynamic> json) =>
    ProductsBodyModel(
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
    );

Map<String, dynamic> _$ProductsBodyModelToJson(ProductsBodyModel instance) =>
    <String, dynamic>{'page': instance.page, 'pageSize': instance.pageSize};
