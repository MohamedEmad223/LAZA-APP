import 'dart:developer';

import 'package:laza_app/core/network/api_result.dart';
import 'package:laza_app/feature/home/data/model/products_body_model.dart';
import 'package:laza_app/feature/home/data/model/products_response_model.dart';
import 'package:laza_app/feature/home/data/services/products_services.dart';

class ProductsRepo {
  final ProductsService productsService;
  ProductsRepo({required this.productsService});

  Future<ApiResult<ProductsResponseModel>> getProducts(
    ProductsBodyModel body,
  ) async {
    try {
      final response = await productsService.getProducts(
        body: body,
      );
      log('response: $response');
      return ApiResult.success(response);
      
    } catch (e, stackTrace) {
      log('stackTrace: $stackTrace');
      return ApiResult.error(e);
    }
  }
}
